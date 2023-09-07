import 'dart:async';
import 'dart:math';
import 'dart:ui';

import 'package:bluetooth_package/bluetooth_package.dart' as btpckg;
import 'package:crclib/catalog.dart';
import 'package:either_dart/either.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:service_app/bloc/bluetooth/connected_device_bloc/connected_device_bloc.dart';
import 'package:service_app/bloc/bluetooth/device_bloc/device_bloc.dart';
import 'package:service_app/bloc/navigation_bar/navigation_bar_bloc.dart';
import 'package:service_app/core/firebase/firmware_model/firmware_model.dart';
import 'package:service_app/core/navigator.dart';
import 'package:service_app/core/services/get_it.dart';
import 'package:service_app/presentation/home_tabs/home_tabs.dart';
import 'package:service_app/presentation/manage_can_devices/car_frimware_page/car_firmware_page_cubit.dart';
import 'package:service_app/presentation/manage_can_devices/car_frimware_page/car_firmware_page_state.dart';
import 'package:service_app/presentation/widgets/custom_button/custom_elevated_button.dart';
import 'package:service_app/presentation/widgets/dialogs/firmware_upload_error_dialog.dart';
import 'package:service_app/presentation/widgets/dialogs/simpleDialog.dart';
import 'package:service_app/presentation/widgets/dialogs/uploading_dialog.dart';

import '../../widgets/dialogs/show_cancel_upload_dialog.dart';

class CarFirmwarePage extends StatefulWidget {
  const CarFirmwarePage(
      {super.key, required this.device, required this.connctedDevice});
  final ConnectedDeviceBloc connctedDevice;
  final DeviceBloc device;
  @override
  State<StatefulWidget> createState() => _CarFirmwarePageState();
}

class _CarFirmwarePageState extends State<CarFirmwarePage> {
  late CarFirmwarePageCubit _carFirmwarePageCubit;
  @override
  void initState() {
    super.initState();
    _carFirmwarePageCubit = CarFirmwarePageCubit();
  }

  @override
  void dispose() {
    _carFirmwarePageCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          return true;
        },
        child: Scaffold(
          appBar: AppBar(title: Text("Car firmware")),
          body: Padding(
            padding: const EdgeInsets.all(28),
            child: BlocListener<DeviceBloc, DeviceState>(
              bloc: widget.device,
              listener: (context, state) => state.maybeMap(
                  connected: (value) => null,
                  orElse: () {
                    getIt<NavigationBarBloc>()
                        .add(const NavigationBarEvent.changeTab(2));
                    navigateTo(
                      context: context,
                      nextPage: const HomeTabs(),
                      newRoot: true,
                    );
                    return null;
                  }),
              child:
                  BlocConsumer<ConnectedDeviceBloc, ConnectedDeviceBlocState>(
                      bloc: widget.connctedDevice,
                      builder: (context, state) {
                        return _ManageDeviceWidget(
                          connectedDevice: widget.connctedDevice,
                          device: widget.device,
                          carFirmwarePageCubit: _carFirmwarePageCubit,
                        );
                      },
                      listener: (context, state) {}),
            ),
          ),
        ));
  }
}

class _ManageDeviceWidget extends StatelessWidget {
  final ConnectedDeviceBloc connectedDevice;
  final DeviceBloc device;
  final CarFirmwarePageCubit carFirmwarePageCubit;

  const _ManageDeviceWidget({
    required this.connectedDevice,
    required this.device,
    required this.carFirmwarePageCubit,
  });
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CarFirmwarePageCubit, CarFirmwarePageState>(
      bloc: carFirmwarePageCubit,
      builder: (context, state) => ListView(
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
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              "Choose a car",
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          _MarkDropDown(carFirmwarePageCubit),
          Visibility(
            visible: state is InitCarFirmwarePageState &&
                state.selectedBrand != null,
            child: _ModelDropDown(carFirmwarePageCubit),
          ),
          Visibility(
            visible: state is InitCarFirmwarePageState &&
                state.selectedModel != null,
            child: _YearDropDown(carFirmwarePageCubit),
          ),
          Visibility(
            visible:
                state is InitCarFirmwarePageState && state.selectedYear != null,
            child: _EquipmentDropDown(carFirmwarePageCubit),
          ),
          // Padding(
          //   padding: const EdgeInsets.all(16),
          //   child: Text(
          //     "Car firmware",
          //     style: Theme.of(context).textTheme.titleLarge,
          //   ),
          // ),
          //const _FirmwareDropDown(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                  child: _OpenButton(connectedDevice, carFirmwarePageCubit)),
              const Expanded(child: _SaveButton()),
            ],
          ),
          _StartUploadButton(connectedDevice, carFirmwarePageCubit),
          _StopUploadButton(connectedDevice, carFirmwarePageCubit),
          _UploadButton(connectedDevice, carFirmwarePageCubit),
          const _InstallationButton(),
        ],
      ),
    );
  }
}

class _MarkDropDown extends StatelessWidget {
  const _MarkDropDown(this.carFirmwarePageCubit);

  final CarFirmwarePageCubit carFirmwarePageCubit;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: DropdownButtonFormField<BrandModel>(
        dropdownColor: Theme.of(context).scaffoldBackgroundColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        isDense: true,
        hint: Text(
          "Select car brand...",
        ),
        items: carFirmwarePageCubit.firmwareModel.brands == null
            ? <DropdownMenuItem<BrandModel>>[]
            : carFirmwarePageCubit.firmwareModel.brands!
                .map((e) => DropdownMenuItem(
                      value: e,
                      child: Text(e.name),
                    ))
                .toList(),
        onChanged: (value) {
          carFirmwarePageCubit.selectBrand(value);
        },
      ),
    );
  }
}

class _ModelDropDown extends StatelessWidget {
  const _ModelDropDown(this.carFirmwarePageCubit);
  final CarFirmwarePageCubit carFirmwarePageCubit;

  @override
  Widget build(BuildContext context) {
    final state = carFirmwarePageCubit.state;
    if (state is InitCarFirmwarePageState && state.selectedBrand != null) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: DropdownButtonFormField<ModelModel>(
          dropdownColor: Theme.of(context).scaffoldBackgroundColor,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          isDense: true,
          hint: Text(
            "Select car model...",
          ),
          value: state.selectedModel,
          items: state.selectedBrand == null
              ? <DropdownMenuItem<ModelModel>>[]
              : state.selectedBrand!.models
                  .map((e) => DropdownMenuItem(
                        value: e,
                        child: Text(e.name),
                      ))
                  .toList(),
          onChanged: (value) {
            carFirmwarePageCubit.selectModel(value);
          },
        ),
      );
    } else {
      return Container();
    }
  }
}

class _EquipmentDropDown extends StatelessWidget {
  const _EquipmentDropDown(this.carFirmwarePageCubit);
  final CarFirmwarePageCubit carFirmwarePageCubit;
  @override
  Widget build(BuildContext context) {
    final state = carFirmwarePageCubit.state;
    if (state is InitCarFirmwarePageState && state.selectedYear != null) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: DropdownButtonFormField<EquipmentModel>(
          dropdownColor: Theme.of(context).scaffoldBackgroundColor,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          isDense: true,
          hint: Text(
            "Select car equipment...",
          ),
          value: state.selectedEquipment,
          items: state.selectedYear == null
              ? <DropdownMenuItem<EquipmentModel>>[]
              : state.selectedYear!.equipments
                  .map((e) => DropdownMenuItem(
                        value: e,
                        child: Text(e.name),
                      ))
                  .toList(),
          onChanged: (value) {
            carFirmwarePageCubit.selectEquipment(value);
          },
        ),
      );
    } else {
      return Container();
    }
  }
}

class _YearDropDown extends StatelessWidget {
  const _YearDropDown(this.carFirmwarePageCubit);
  final CarFirmwarePageCubit carFirmwarePageCubit;

  @override
  Widget build(BuildContext context) {
    final state = carFirmwarePageCubit.state;
    if (state is InitCarFirmwarePageState && state.selectedModel != null) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: DropdownButtonFormField<YearModel>(
          dropdownColor: Theme.of(context).scaffoldBackgroundColor,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          isDense: true,
          value: state.selectedYear,
          hint: Text(
            "Select car equipment...",
          ),
          items: state.selectedModel == null
              ? <DropdownMenuItem<YearModel>>[]
              : state.selectedModel!.years
                  .map((e) => DropdownMenuItem(
                        value: e,
                        child: Text(e.name),
                      ))
                  .toList(),
          onChanged: (value) {
            carFirmwarePageCubit.selectYear(value);
          },
        ),
      );
    } else {
      return Container();
    }
  }
}

class _SaveButton extends StatelessWidget {
  const _SaveButton();

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
          backgroundColor: Colors.grey,
        ),
        child: const Text("SAVE"),
      ),
    );
  }
}

class _OpenButton extends StatelessWidget {
  const _OpenButton(this.connctedDevice, this._carFirmwarePageCubit);
  final ConnectedDeviceBloc connctedDevice;
  final CarFirmwarePageCubit _carFirmwarePageCubit;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CustomElevatedButton(
        onPressed: () async {
          await _carFirmwarePageCubit.pickFirmware();
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).colorScheme.primary,
        ),
        child: const Text("OPEN"),
      ),
    );
  }
}

class _StopUploadButton extends StatelessWidget {
  const _StopUploadButton(this.connctedDevice, this._carFirmwarePageCubit);
  final ConnectedDeviceBloc connctedDevice;
  final CarFirmwarePageCubit _carFirmwarePageCubit;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CustomElevatedButton(
        onPressed: () async {
          if (_carFirmwarePageCubit.carfirmware == null) {
            return;
          }
          await connctedDevice.state.device.firmwareSendStop();
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).colorScheme.primary,
        ),
        child: const Text("STOP UPLOAD"),
      ),
    );
  }
}

class _StartUploadButton extends StatelessWidget {
  const _StartUploadButton(this.connctedDevice, this._carFirmwarePageCubit);
  final ConnectedDeviceBloc connctedDevice;
  final CarFirmwarePageCubit _carFirmwarePageCubit;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CustomElevatedButton(
        onPressed: () async {
          if (_carFirmwarePageCubit.carfirmware == null) {
            return;
          }

          final crcValue = Crc32Mpeg2()
              .convert(_carFirmwarePageCubit.carfirmware!)
              .toBigInt()
              .toInt();
          final byteData = ByteData(4);
          byteData.setUint32(
            0,
            crcValue,
            Endian.little,
          );
          final crc = byteData.buffer.asUint8List();
          await connctedDevice.state.device.updateStartCommand(
            _carFirmwarePageCubit.firmwwareName!,
            _carFirmwarePageCubit.pagesCount!,
            crc,
          );
          await Future.delayed(const Duration(milliseconds: 300));
          await connctedDevice.state.device.firmwareSendKey();
          await Future.delayed(const Duration(milliseconds: 300));
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).colorScheme.primary,
        ),
        child: const Text("START UPLOAD"),
      ),
    );
  }
}

class _UploadButton extends StatelessWidget {
  const _UploadButton(this.connctedDevice, this._carFirmwarePageCubit);
  final ConnectedDeviceBloc connctedDevice;
  final CarFirmwarePageCubit _carFirmwarePageCubit;

  Future<void> _uploadFirmware(BuildContext context) async {
    if (_carFirmwarePageCubit.carfirmware == null &&
        _carFirmwarePageCubit.downloadLink == "") {
      await showModalMessage(context, "Error", "Frimware doesnt selected");
      return;
    }
    if (_carFirmwarePageCubit.downloadLink != null) {
      await _carFirmwarePageCubit.downloadFirmware();
      if (_carFirmwarePageCubit.carfirmware == null) {
        await showModalMessage(
            context, "Error", "Frimware cannot be downloaded");
        return;
      }
    }

    final crcValue = Crc32Mpeg2()
        .convert(_carFirmwarePageCubit.carfirmware!)
        .toBigInt()
        .toInt();
    final byteData = ByteData(4);
    byteData.setUint32(
      0,
      crcValue,
      Endian.little,
    );
    final crc = byteData.buffer.asUint8List();
    await connctedDevice.state.device.updateStartCommand(
      _carFirmwarePageCubit.firmwwareName!,
      _carFirmwarePageCubit.pagesCount!,
      crc,
    );
    await Future.delayed(const Duration(milliseconds: 300));
    // await connctedDevice.state.device.firmwareSendKey();
    // await Future.delayed(const Duration(milliseconds: 300));
    final progressNotifier = ValueNotifier<double>(0);
    var wasCancelled = false;
    final cancelStreamController = StreamController<bool>();
    final cancelStreamSubscribtion =
        cancelStreamController.stream.listen((event) {
      wasCancelled = event;
    });
    if (context.mounted) {
      showUploadingDialog(context, progressNotifier, cancelStreamController);
    }
    bool failed = false;

    final transmittionSubscribtion =
        (connctedDevice.state.device as btpckg.ShadowBluetoothDevice)
            .shadowBTService
            ?.rxCharacteristicStream
            .listen((event) {
      if (event is btpckg.BaseAnswerCommand) {
        if (!event.result) {
          failed = true;
        }
      }
    });

    for (var i = 0; i < _carFirmwarePageCubit.pagesCount!; i++) {
      if (wasCancelled) {
        if (context.mounted) {
          final res = await showFirmwareUploadCancelDialog(context);
          if (res == 0) {
            if (context.mounted) {
              Navigator.of(context).pop();
            }
            await transmittionSubscribtion?.cancel();
            await cancelStreamSubscribtion.cancel();

            return;
          } else {
            wasCancelled = false;
          }
        }
      }
      if (failed) {
        if (context.mounted) {
          final res = await showFirmwareUploadErrorDialog(context);
          if (res == 0) {
            if (context.mounted) {
              Navigator.of(context).pop();
            }
            await transmittionSubscribtion?.cancel();
            await cancelStreamSubscribtion.cancel();
            if (context.mounted) {
              _uploadFirmware(context);
            }

            return;
          } else {
            if (context.mounted) {
              Navigator.of(context).pop();
            }
            await transmittionSubscribtion?.cancel();
            await cancelStreamSubscribtion.cancel();
            return;
          }
        }
      }
      progressNotifier.value = i / _carFirmwarePageCubit.pagesCount!;
      final data = [
        ..._carFirmwarePageCubit.carfirmware!.sublist(i * 128,
            min((i + 1) * 128, _carFirmwarePageCubit.carfirmware!.length))
      ];
      await connctedDevice.state.device
          .firmwareSendPage(Uint8List.fromList(data), i);
    }
    await transmittionSubscribtion?.cancel();
    await cancelStreamSubscribtion.cancel();
    await Future.delayed(const Duration(milliseconds: 500));
    await connctedDevice.state.device.firmwareSendStop().fold((left) async {
      final res = await showFirmwareUploadErrorDialog(context);
      if (res == 0) {
        if (context.mounted) {
          _uploadFirmware(context);
        }
        return;
      } else {
        if (context.mounted) {
          Navigator.of(context).pop();
        }
        return;
      }
    }, (right) async {
      bool? success;
      int counter = 0;
      final reaultSubscribtion =
          (connctedDevice.state.device as btpckg.ShadowBluetoothDevice)
              .shadowBTService
              ?.rxCharacteristicStream
              .listen((event) {
        if (event is btpckg.FirmwareUpdateResultCommand) {
          success = event.result;
        }
      });
      while (success == null && counter < 700) {
        counter++;
        await Future.delayed(const Duration(milliseconds: 10));
      }

      reaultSubscribtion?.cancel();
      if (context.mounted && success == true) {
        Navigator.of(context).pop();
        await showModalMessage(
            context, "Info", "Firmware was uploaded successufully");
      }
      if (success == null && context.mounted) {
        Navigator.of(context).pop();
        await showModalMessage(context, "Error", "Timeout error");
      }
      if (success == false && context.mounted) {
        Navigator.of(context).pop();
        await showModalMessage(
            context, "Error", "Error while writing into device");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CustomElevatedButton(
        onPressed: () async {
          await _uploadFirmware(context);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).colorScheme.primary,
        ),
        child: const Text("UPLOAD"),
      ),
    );
  }
}

class _InstallationButton extends StatelessWidget {
  const _InstallationButton();

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
          backgroundColor: Colors.grey,
        ),
        child: const Text("INSTALLATION MAP"),
      ),
    );
  }
}

class _BackButton extends StatelessWidget {
  const _BackButton();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 32),
      child: CustomElevatedButton(
        onPressed: () async {
          Navigator.of(context).pop();
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).colorScheme.primary,
        ),
        child: const Text("BACK"),
      ),
    );
  }
}
