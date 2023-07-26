import 'dart:io';
import 'dart:math';
import 'dart:ui';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:service_app/bloc/bluetooth/connected_device_bloc/connected_device_bloc.dart';
import 'package:service_app/bloc/bluetooth/device_bloc/device_bloc.dart';
import 'package:service_app/bloc/navigation_bar/navigation_bar_bloc.dart';
import 'package:service_app/core/navigator.dart';
import 'package:service_app/core/services/get_it.dart';
import 'package:service_app/presentation/home_tabs/home_tabs.dart';
import 'package:service_app/presentation/theme/theme.dart';
import 'package:service_app/presentation/widgets/custom_button/custom_elevated_button.dart';
import 'package:service_app/presentation/widgets/dialogs/disconnect_dialog.dart';
import 'package:service_app/presentation/widgets/dialogs/uploading_dialog.dart';
import 'package:service_app/presentation/widgets/logo_widget/logo_widget.dart';

class CarFirmwarePage extends StatefulWidget {
  const CarFirmwarePage(
      {super.key, required this.device, required this.connctedDevice});
  final ConnectedDeviceBloc connctedDevice;
  final DeviceBloc device;
  @override
  State<StatefulWidget> createState() => CarFirmwarePageState();
}

class CarFirmwarePageState extends State<CarFirmwarePage> {
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
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            "Choose a car",
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        const _MarkDropDown(),
        const _ModelDropDown(),
        const _YearDropDown(),
        const _EquipmentDropDown(),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            "Car firmware",
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        const _FirmwareDropDown(),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
          child: TextFormField(
            initialValue: connectedDevice.delay!.toString(),
            style: const TextStyle(color: Colors.black),
            decoration: loginInputDecorationTheme.copyWith(
              prefixIcon: const Icon(Icons.timelapse),
              labelText: "Delay",
              hintText: "Enter delay",
            ),
            onChanged: (value) {
              connectedDevice.delay = int.tryParse(value);
            },
            textInputAction: TextInputAction.next,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(child: _OpenButton(connectedDevice)),
            const Expanded(child: _SaveButton()),
          ],
        ),
        _UploadButton(connectedDevice),
        const _InstallationButton(),
      ],
    );
  }
}

class _MarkDropDown extends StatelessWidget {
  const _MarkDropDown();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: DropdownButtonFormField<int>(
        dropdownColor: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        isDense: true,
        hint: Text(
          "Select car brand...",
          style: TextStyle(color: Colors.white),
        ),
        items: [
          DropdownMenuItem(
            child: Text("Toyota"),
            value: 0,
          ),
          DropdownMenuItem(
            child: Text("Mitsubishi"),
            value: 1,
          ),
          DropdownMenuItem(
            child: Text("Mersedes"),
            value: 2,
          ),
          DropdownMenuItem(
            child: Text("Mitsubishi"),
            value: 3,
          ),
        ],
        onChanged: (value) {},
      ),
    );
  }
}

class _ModelDropDown extends StatelessWidget {
  const _ModelDropDown();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: DropdownButtonFormField<int>(
        dropdownColor: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        isDense: true,
        hint: Text(
          "Select a model...",
          style: TextStyle(color: Colors.white),
        ),
        items: [
          DropdownMenuItem(
            child: Text("Toyota"),
            value: 0,
          ),
          DropdownMenuItem(
            child: Text("Mitsubishi"),
            value: 1,
          ),
          DropdownMenuItem(
            child: Text("Mersedes"),
            value: 2,
          ),
          DropdownMenuItem(
            child: Text("Mitsubishi"),
            value: 3,
          ),
        ],
        onChanged: (value) {},
      ),
    );
  }
}

class _EquipmentDropDown extends StatelessWidget {
  const _EquipmentDropDown();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: DropdownButtonFormField<int>(
        dropdownColor: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        isDense: true,
        hint: Text(
          "Select an equipment...",
          style: TextStyle(color: Colors.white),
        ),
        items: [
          DropdownMenuItem(
            child: Text("Toyota"),
            value: 0,
          ),
          DropdownMenuItem(
            child: Text("Mitsubishi"),
            value: 1,
          ),
          DropdownMenuItem(
            child: Text("Mersedes"),
            value: 2,
          ),
          DropdownMenuItem(
            child: Text("Mitsubishi"),
            value: 3,
          ),
        ],
        onChanged: (value) {},
      ),
    );
  }
}

class _FirmwareDropDown extends StatelessWidget {
  const _FirmwareDropDown();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: DropdownButtonFormField<int>(
        dropdownColor: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        isDense: true,
        hint: Text(
          "Select a firmware...",
          style: TextStyle(color: Colors.white),
        ),
        items: [
          DropdownMenuItem(
            child: Text("Toyota"),
            value: 0,
          ),
          DropdownMenuItem(
            child: Text("Mitsubishi"),
            value: 1,
          ),
          DropdownMenuItem(
            child: Text("Mersedes"),
            value: 2,
          ),
          DropdownMenuItem(
            child: Text("Mitsubishi"),
            value: 3,
          ),
        ],
        onChanged: (value) {},
      ),
    );
  }
}

class _YearDropDown extends StatelessWidget {
  const _YearDropDown();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: DropdownButtonFormField<int>(
        dropdownColor: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        isDense: true,
        hint: Text(
          "Select an year...",
          style: TextStyle(color: Colors.white),
        ),
        items: [
          DropdownMenuItem(
            child: Text("Toyota"),
            value: 0,
          ),
          DropdownMenuItem(
            child: Text("Mitsubishi"),
            value: 1,
          ),
          DropdownMenuItem(
            child: Text("Mersedes"),
            value: 2,
          ),
          DropdownMenuItem(
            child: Text("Mitsubishi"),
            value: 3,
          ),
        ],
        onChanged: (value) {},
      ),
    );
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
          backgroundColor: Theme.of(context).colorScheme.primary,
        ),
        child: const Text("SAVE"),
      ),
    );
  }
}

class _OpenButton extends StatelessWidget {
  const _OpenButton(this.connctedDevice);
  final ConnectedDeviceBloc connctedDevice;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CustomElevatedButton(
        onPressed: () async {
          FilePickerResult? result = await FilePicker.platform.pickFiles(
              dialogTitle: "Select a firmaware file", type: FileType.any);

          if (result != null) {
            File file = File(result.files.single.path!);
            connctedDevice.firmwwareName =
                result.files.single.name.split(".")[0];

            connctedDevice.carfirmware = await file.readAsBytes();
            connctedDevice.pagesCount =
                connctedDevice.carfirmware!.length ~/ 128;
            if (connctedDevice.pagesCount! * 128 >
                connctedDevice.carfirmware!.length) {
              connctedDevice.pagesCount = connctedDevice.pagesCount! + 1;
            }
          } else {
            // User canceled the picker
          }
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).colorScheme.primary,
        ),
        child: const Text("OPEN"),
      ),
    );
  }
}

class _UploadButton extends StatelessWidget {
  const _UploadButton(this.connctedDevice);
  final ConnectedDeviceBloc connctedDevice;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CustomElevatedButton(
        onPressed: () async {
          if (connctedDevice.carfirmware == null) {
            return;
          }
          await connctedDevice.state.device.updateStartCommand(
              connctedDevice.firmwwareName!, connctedDevice.pagesCount!);
          await Future.delayed(const Duration(milliseconds: 300));
          await connctedDevice.state.device.firmwareSendKey();
          await Future.delayed(const Duration(milliseconds: 300));
          final progressNotifier = ValueNotifier<double>(0);
          if (context.mounted) {
            showUploadingDialog(context, progressNotifier);
          }
          for (var i = 0; i < connctedDevice.pagesCount!; i++) {
            progressNotifier.value = i / connctedDevice.pagesCount!;
            final data = connctedDevice.carfirmware!.sublist(i * 128,
                min((i + 1) * 128, connctedDevice.carfirmware!.length));
            while (data.length < 128) {
              data.add(0);
            }
            await connctedDevice.state.device.firmwareSendPage(data, i);
            if (connctedDevice.delay != null) {
              await Future.delayed(
                  Duration(milliseconds: connctedDevice.delay!));
            }
            //connctedDevice.add(const ConnectedDeviceEvent.sendTest());
          }
          await Future.delayed(const Duration(milliseconds: 300));
          await connctedDevice.state.device.firmwareSendStop();
          if (context.mounted) {
            Navigator.of(context).pop();
          }
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
          backgroundColor: Theme.of(context).colorScheme.primary,
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
