import 'dart:async';
import 'dart:ui';

import 'package:bluetooth_package/bluetooth_package.dart' as btpckg;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_logs/flutter_logs.dart';
import 'package:intl/intl.dart';
import 'package:service_app/bloc/bluetooth/connected_device_bloc/connected_device_bloc.dart';
import 'package:service_app/bloc/bluetooth/device_bloc/device_bloc.dart';
import 'package:service_app/core/navigator.dart';
import 'package:service_app/presentation/manage_can_devices/car_frimware_page/car_firmware_page.dart';
import 'package:service_app/presentation/manage_can_devices/log_page/log_page.dart';
import 'package:service_app/presentation/widgets/custom_button/custom_elevated_button.dart';
import 'package:service_app/presentation/widgets/dialogs/disconnect_dialog.dart';
import 'package:service_app/presentation/widgets/loading_screen/loading_screen.dart';
import 'package:service_app/presentation/widgets/logo_widget/logo_widget.dart';

class ManageCanDevicePage extends StatefulWidget {
  const ManageCanDevicePage({super.key, required this.device});
  final DeviceBloc device;
  @override
  State<StatefulWidget> createState() => ManageCanDevicePageState();
}

class ManageCanDevicePageState extends State<ManageCanDevicePage> {
  String sendedCommandName = "";
  String sendedCommandBytes = "";
  String receivedCommandName = "";
  String receivedCommandBytes = "";
  String additionalInfo = "";
  StreamSubscription<btpckg.BaseReadCommand>? streamSubscription;
  StreamController<btpckg.BaseWriteCommand> streamController =
      StreamController<btpckg.BaseWriteCommand>();
  StreamSubscription<btpckg.BaseWriteCommand>? streamSubscriptionWrite;
  final DateFormat dateFormat = DateFormat("dd.MM.yyyy hh:mm:ss.SSS");

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    streamSubscriptionWrite?.cancel();
    streamSubscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          widget.device.state.mapOrNull(
            connected: (connected) async {
              final result = await showDisconnectDialog(context);
              if (result == 0) {
                widget.device.add(const DeviceEvent.disconnect());
              }
            },
          );

          return false;
        },
        child: Scaffold(
          appBar: AppBar(title: Text(widget.device.state.deviceName)),
          body: Padding(
            padding: const EdgeInsets.all(28),
            child: BlocConsumer<DeviceBloc, DeviceState>(
                bloc: widget.device,
                builder: (context, state) {
                  return state.map(
                      available: (value) {
                        return const SizedBox.shrink();
                      },
                      connecting: (value) {
                        return LoadingScreen();
                      },
                      connected: (value) => _ManageDeviceWidget(
                            streamController: streamController,
                            connectedDevice: value.connectedDeviceBloc,
                            device: widget.device,
                            logInfo:
                                "Sended $sendedCommandName\n $sendedCommandBytes\n Received $receivedCommandName\n $receivedCommandBytes $additionalInfo",
                          ),
                      disconnecting: (value) {
                        return Align(
                            alignment: Alignment.center,
                            child: Column(
                              children: const [
                                LogoWidget(),
                                CircularProgressIndicator.adaptive()
                              ],
                            ));
                      });
                },
                listener: (context, state) {
                  state.mapOrNull(available: (value) {
                    Navigator.of(context).pop();
                  }, connected: (connected) {
                    if (connected.connectedDeviceBloc.state.device
                        is! btpckg.ShadowBluetoothDevice) {
                      return;
                    }
                    streamSubscriptionWrite = (connected.connectedDeviceBloc
                            .state.device as btpckg.ShadowBluetoothDevice)
                        .shadowBTService
                        ?.txCharacteristicStream
                        .listen((event) {
                      sendedCommandBytes = "";
                      sendedCommandName = "";
                      sendedCommandName = event.runtimeType.toString();
                      sendedCommandBytes = event.toBytes().toString();
                      FlutterLogs.logThis(
                          tag: 'TX',
                          logMessage:
                              'Command $sendedCommandName bytes $sendedCommandBytes {${dateFormat.format(DateTime.now())}}',
                          level: LogLevel.INFO);
                      setState(() {});
                    });

                    streamSubscription = (connected.connectedDeviceBloc.state
                            .device as btpckg.ShadowBluetoothDevice)
                        .shadowBTService
                        ?.rxCharacteristicStream
                        .listen((event) {
                      receivedCommandName = "";
                      receivedCommandBytes = "";
                      additionalInfo = "";

                      receivedCommandName = event.runtimeType.toString();
                      receivedCommandBytes = event.bytes.toString();
                      if (event is btpckg.ConnectResponseCommand) {
                        additionalInfo +=
                            " datetime = ${event.dateTime.toString()}\n";
                        additionalInfo +=
                            " serialNumber = ${event.serialNumber.toString()}\n";
                        additionalInfo +=
                            " lastConnectResult = ${event.lastConnectResult.toString()}\n";
                        additionalInfo +=
                            " randomNumber = ${event.randomNumber.toString()}\n";
                      } else if (event is btpckg.GetConfigCommand) {
                        additionalInfo +=
                            " antiRobbery = ${event.antiRobbery}\n";
                        additionalInfo += " locked = ${event.locked}\n";
                        additionalInfo += " autoExit = ${event.autoExit}\n";
                      } else if (event is btpckg.GetFirmwareNameCommand) {
                        additionalInfo += " firmware name = ${event.name}\n";
                      }
                      FlutterLogs.logThis(
                          tag: 'RX',
                          logMessage:
                              'Command $receivedCommandName bytes $receivedCommandBytes {${dateFormat.format(DateTime.now())}}',
                          level: LogLevel.INFO);
                      setState(() {});
                    });
                  });
                }),
          ),
        ));
  }
}

class _ManageDeviceWidget extends StatelessWidget {
  final ConnectedDeviceBloc connectedDevice;
  final DeviceBloc device;
  final String logInfo;
  final StreamController<btpckg.BaseWriteCommand> streamController;

  const _ManageDeviceWidget({
    required this.connectedDevice,
    required this.device,
    required this.logInfo,
    required this.streamController,
  });
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            "Dev page",
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        Text(
          logInfo,
          softWrap: true,
        ),
        _TestCommandButton(
          streamController: streamController,
          device: device,
          connectedDeviceBloc: connectedDevice,
        ),
        _ConnectRequestButton(
          streamController: streamController,
          device: device,
          connectedDeviceBloc: connectedDevice,
        ),
        _FirmwareVersonButton(
          streamController: streamController,
          device: device,
          connectedDeviceBloc: connectedDevice,
        ),
        _SetSerialNumberButton(
          streamController: streamController,
          device: device,
          connectedDeviceBloc: connectedDevice,
        ),
        _SetSecretCodeButton(
          streamController: streamController,
          device: device,
          connectedDeviceBloc: connectedDevice,
        ),
        _SetPinButton(
          streamController: streamController,
          device: device,
          connectedDeviceBloc: connectedDevice,
        ),
        _ReqwritePinButton(
          streamController: streamController,
          device: device,
          connectedDeviceBloc: connectedDevice,
        ),
        _SetConfigButton(
          streamController: streamController,
          device: device,
          connectedDeviceBloc: connectedDevice,
        ),
        _GetBootloaderVersionButton(
          streamController: streamController,
          device: device,
          connectedDeviceBloc: connectedDevice,
        ),
        _GetFirmwareNameButton(
          streamController: streamController,
          device: device,
          connectedDeviceBloc: connectedDevice,
        ),
        _LogPageButton(
          connectedDeviceBloc: connectedDevice,
          device: device,
        ),
        _CarFirmwareButton(
          device: device,
          connectedDeviceBloc: connectedDevice,
        ),
        _DisconnectButton(
          device: device,
        ),
      ],
    );
  }
}

class _LogPageButton extends StatelessWidget {
  const _LogPageButton(
      {required this.device, required this.connectedDeviceBloc});
  final DeviceBloc device;
  final ConnectedDeviceBloc connectedDeviceBloc;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
      child: CustomElevatedButton(
        onPressed: () {
          navigateTo(
            context: context,
            nextPage: LogPage(
              device: device,
              connctedDevice: connectedDeviceBloc,
            ),
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).colorScheme.primary,
        ),
        child: const Text("GET LOGs"),
      ),
    );
  }
}

class _CarFirmwareButton extends StatelessWidget {
  const _CarFirmwareButton(
      {required this.device, required this.connectedDeviceBloc});
  final DeviceBloc device;
  final ConnectedDeviceBloc connectedDeviceBloc;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
      child: CustomElevatedButton(
        onPressed: () {
          navigateTo(
            context: context,
            nextPage: CarFirmwarePage(
              device: device,
              connctedDevice: connectedDeviceBloc,
            ),
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).colorScheme.primary,
        ),
        child: const Text("CAR FIRMWARE"),
      ),
    );
  }
}

class _TestCommandButton extends StatelessWidget {
  const _TestCommandButton(
      {required this.device,
      required this.connectedDeviceBloc,
      required this.streamController});
  final DeviceBloc device;
  final ConnectedDeviceBloc connectedDeviceBloc;
  final StreamController<btpckg.BaseWriteCommand> streamController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
      child: CustomElevatedButton(
        onPressed: () {
          connectedDeviceBloc.add(const ConnectedDeviceEvent.testCommand());
          streamController.add(btpckg.TestCommand());
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).colorScheme.primary,
        ),
        child: const Text("testCommand"),
      ),
    );
  }
}

class _SetSerialNumberButton extends StatelessWidget {
  const _SetSerialNumberButton(
      {required this.device,
      required this.connectedDeviceBloc,
      required this.streamController});
  final DeviceBloc device;
  final ConnectedDeviceBloc connectedDeviceBloc;
  final StreamController<btpckg.BaseWriteCommand> streamController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
      child: CustomElevatedButton(
        onPressed: () {
          connectedDeviceBloc.add(const ConnectedDeviceEvent.setSerialNumber());
          streamController.add(btpckg.SetSerialNumberCommand());
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).colorScheme.primary,
        ),
        child: const Text("setSerialNumber"),
      ),
    );
  }
}

class _SetSecretCodeButton extends StatelessWidget {
  const _SetSecretCodeButton(
      {required this.device,
      required this.connectedDeviceBloc,
      required this.streamController});
  final DeviceBloc device;
  final ConnectedDeviceBloc connectedDeviceBloc;
  final StreamController<btpckg.BaseWriteCommand> streamController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
      child: CustomElevatedButton(
        onPressed: () {
          connectedDeviceBloc.add(const ConnectedDeviceEvent.setSecretCode());
          streamController.add(btpckg.SetSecretCodeCommand());
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).colorScheme.primary,
        ),
        child: const Text("setSecretCode"),
      ),
    );
  }
}

class _SetPinButton extends StatelessWidget {
  const _SetPinButton(
      {required this.device,
      required this.connectedDeviceBloc,
      required this.streamController});
  final DeviceBloc device;
  final ConnectedDeviceBloc connectedDeviceBloc;
  final StreamController<btpckg.BaseWriteCommand> streamController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
      child: CustomElevatedButton(
        onPressed: () {
          connectedDeviceBloc.add(const ConnectedDeviceEvent.setPin());
          streamController.add(btpckg.SetPinCommand());
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).colorScheme.primary,
        ),
        child: const Text("setPin"),
      ),
    );
  }
}

class _SetConfigButton extends StatelessWidget {
  const _SetConfigButton(
      {required this.device,
      required this.connectedDeviceBloc,
      required this.streamController});
  final DeviceBloc device;
  final ConnectedDeviceBloc connectedDeviceBloc;
  final StreamController<btpckg.BaseWriteCommand> streamController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
      child: CustomElevatedButton(
        onPressed: () {
          connectedDeviceBloc.add(const ConnectedDeviceEvent.setConfig());
          streamController.add(btpckg.SetConfigCommand());
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).colorScheme.primary,
        ),
        child: const Text("setConfig"),
      ),
    );
  }
}

class _ReqwritePinButton extends StatelessWidget {
  const _ReqwritePinButton(
      {required this.device,
      required this.connectedDeviceBloc,
      required this.streamController});
  final DeviceBloc device;
  final ConnectedDeviceBloc connectedDeviceBloc;
  final StreamController<btpckg.BaseWriteCommand> streamController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
      child: CustomElevatedButton(
        onPressed: () {
          connectedDeviceBloc.add(const ConnectedDeviceEvent.rewritePin());
          streamController.add(btpckg.RewritePinCommand());
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).colorScheme.primary,
        ),
        child: const Text("rewritePin"),
      ),
    );
  }
}

class _GetFirmwareNameButton extends StatelessWidget {
  const _GetFirmwareNameButton(
      {required this.device,
      required this.connectedDeviceBloc,
      required this.streamController});
  final DeviceBloc device;
  final ConnectedDeviceBloc connectedDeviceBloc;
  final StreamController<btpckg.BaseWriteCommand> streamController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
      child: CustomElevatedButton(
        onPressed: () {
          connectedDeviceBloc.add(const ConnectedDeviceEvent.getFrimwareName());
          streamController.add(btpckg.RequestFirmwareNameCommand());
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).colorScheme.primary,
        ),
        child: const Text("getFrimwareName"),
      ),
    );
  }
}

class _GetBootloaderVersionButton extends StatelessWidget {
  const _GetBootloaderVersionButton(
      {required this.device,
      required this.connectedDeviceBloc,
      required this.streamController});
  final DeviceBloc device;
  final ConnectedDeviceBloc connectedDeviceBloc;
  final StreamController<btpckg.BaseWriteCommand> streamController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
      child: CustomElevatedButton(
        onPressed: () {
          connectedDeviceBloc
              .add(const ConnectedDeviceEvent.getBootloaderVersion());
          streamController.add(btpckg.GetBootLoaderVersionCommand());
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).colorScheme.primary,
        ),
        child: const Text("getBootloaderVersion"),
      ),
    );
  }
}

class _ConnectRequestButton extends StatelessWidget {
  const _ConnectRequestButton(
      {required this.device,
      required this.connectedDeviceBloc,
      required this.streamController});
  final DeviceBloc device;
  final ConnectedDeviceBloc connectedDeviceBloc;
  final StreamController<btpckg.BaseWriteCommand> streamController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
      child: CustomElevatedButton(
        onPressed: () {
          connectedDeviceBloc
              .add(const ConnectedDeviceEvent.sendConnectRequest());
          streamController.add(btpckg.ConnectRequstCommand());
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).colorScheme.primary,
        ),
        child: const Text("sendConnectRequest"),
      ),
    );
  }
}

class _FirmwareVersonButton extends StatelessWidget {
  const _FirmwareVersonButton(
      {required this.device,
      required this.connectedDeviceBloc,
      required this.streamController});
  final DeviceBloc device;
  final ConnectedDeviceBloc connectedDeviceBloc;
  final StreamController<btpckg.BaseWriteCommand> streamController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
      child: CustomElevatedButton(
        onPressed: () {
          connectedDeviceBloc
              .add(const ConnectedDeviceEvent.firmwareVersionRequest());
          streamController.add(btpckg.FirmwareVersionRequestCommand());
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).colorScheme.primary,
        ),
        child: const Text("firmwareVersionRequest"),
      ),
    );
  }
}

class _SettingsDeviceButton extends StatelessWidget {
  const _SettingsDeviceButton();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CustomElevatedButton(
        onPressed: () {
          //  navigateTo(
          // context: context,
          // nextPage: const SelectMeasurementPage(),
          // );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).colorScheme.primary,
        ),
        child: const Text("DEVICE SETTINGS"),
      ),
    );
  }
}

class _PairTagButton extends StatelessWidget {
  const _PairTagButton();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CustomElevatedButton(
        onPressed: () {
          //  navigateTo(
          // context: context,
          // nextPage: const SelectMeasurementPage(),
          // );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).colorScheme.primary,
        ),
        child: const Text("PAIR TAG/UNTAG"),
      ),
    );
  }
}

class _CanMonitorButton extends StatelessWidget {
  const _CanMonitorButton();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CustomElevatedButton(
        onPressed: () {
          //  navigateTo(
          // context: context,
          // nextPage: const SelectMeasurementPage(),
          // );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).colorScheme.primary,
        ),
        child: const Text("CAN MONITOR BUTTON"),
      ),
    );
  }
}

class _UpdateFWBTButton extends StatelessWidget {
  const _UpdateFWBTButton();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CustomElevatedButton(
        onPressed: () {
          //  navigateTo(
          // context: context,
          // nextPage: const SelectMeasurementPage(),
          // );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).colorScheme.primary,
        ),
        child: const Text("UPDATE FIRMWARE BT"),
      ),
    );
  }
}

class _UpdateFWMLButton extends StatelessWidget {
  const _UpdateFWMLButton();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CustomElevatedButton(
        onPressed: () {
          //  navigateTo(
          // context: context,
          // nextPage: const SelectMeasurementPage(),
          // );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).colorScheme.primary,
        ),
        child: const Text("UPDATE FIRMWARE ML"),
      ),
    );
  }
}

class _DisconnectButton extends StatelessWidget {
  const _DisconnectButton({required this.device});
  final DeviceBloc device;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 32),
      child: CustomElevatedButton(
        onPressed: () async {
          final result = await showDisconnectDialog(context);
          if (result == 0) {
            device.add(const DeviceEvent.disconnect());
          }
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.red,
        ),
        child: const Text("DISCONNECT"),
      ),
    );
  }
}
