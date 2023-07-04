import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:service_app/bloc/bluetooth/connected_device_bloc/connected_device_bloc.dart';
import 'package:service_app/bloc/bluetooth/device_bloc/device_bloc.dart';
import 'package:service_app/core/navigator.dart';
import 'package:service_app/presentation/manage_can_devices/car_firmware_page.dart';
import 'package:service_app/presentation/widgets/custom_button/custom_elevated_button.dart';
import 'package:service_app/presentation/widgets/dialogs/disconnect_dialog.dart';
import 'package:service_app/presentation/widgets/loading_screen/loading_screen.dart';
import 'package:service_app/presentation/widgets/logo_widget/logo_widget.dart';

class DevPage extends StatefulWidget {
  const DevPage({super.key, required this.device});
  final DeviceBloc device;
  @override
  State<StatefulWidget> createState() => DevPageState();
}

class DevPageState extends State<DevPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          final result = await showDisconnectDialog(context);
          if (result == 0) {
            widget.device.add(const DeviceEvent.disconnect());
          }
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
                            connectedDevice: value.connectedDeviceBloc,
                            device: widget.device,
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
                  state.mapOrNull(
                    available: (value) {
                      Navigator.of(context).pop();
                    },
                  );
                }),
          ),
        ));
  }
}

class _ManageDeviceWidget extends StatelessWidget {
  final ConnectedDeviceBloc connectedDevice;
  final DeviceBloc device;

  const _ManageDeviceWidget({
    required this.connectedDevice,
    required this.device,
  });
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            "Overview",
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        Table(
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: const [
            TableRow(children: [
              Text("Firmware"),
              Text(
                "toyota_123",
                textAlign: TextAlign.end,
              ),
            ]),
            TableRow(children: [
              Text("Internal frimware ML"),
              Text(
                "toyota_123",
                textAlign: TextAlign.end,
              ),
            ]),
            TableRow(children: [
              Text("Internal frimware BT"),
              Text(
                "toyota_123",
                textAlign: TextAlign.end,
              ),
            ]),
          ],
        ),
        _CarFirmwareButton(
          device: device,
          connectedDeviceBloc: connectedDevice,
        ),
        const _SettingsDeviceButton(),
        const _PairTagButton(),
        const _CanMonitorButton(),
        const _UpdateFWBTButton(),
        const _UpdateFWMLButton(),
        _DisconnectButton(
          device: device,
        ),
      ],
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
      padding: EdgeInsets.fromLTRB(8, 64, 8, 8),
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
