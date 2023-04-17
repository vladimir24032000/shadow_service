import 'dart:async';
import 'dart:io';

import 'package:either_dart/either.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';
import 'package:service_app/bloc/bluetooth/connection/connection_bloc.dart';
import 'package:service_app/bloc/bluetooth/device_bloc/device_bloc.dart';
import 'package:service_app/core/navigator.dart';
import 'package:service_app/presentation/manage_can_devices/manage_can_device_page.dart';
import 'package:service_app/presentation/widgets/devices/grouped_devices.dart';
import 'package:service_app/presentation/widgets/dialogs/enable_bt_dialog.dart';
import 'package:service_app/presentation/widgets/dialogs/enable_location_dialog.dart';
import 'package:service_app/presentation/widgets/dialogs/simpleDialog.dart';
import 'package:service_app/presentation/widgets/list_tile/custom_group_tiles.dart';
import 'package:service_app/presentation/widgets/list_tile/custom_list_tile.dart';

class ConnectCanDevicesPage extends StatefulWidget {
  const ConnectCanDevicesPage({Key? key}) : super(key: key);

  @override
  State<ConnectCanDevicesPage> createState() => _ConnectCanDevicesPageState();
}

class _ConnectCanDevicesPageState extends State<ConnectCanDevicesPage> {
  late BTConnectionBloc _btConnectionBloc;
  late StreamSubscription<BTConnectionState> _btConnectionStreamSubscription;

  late List<DeviceBloc> _deviceBlocs;

  bool _isScanning = false;
  @override
  void initState() {
    super.initState();
    _deviceBlocs = <DeviceBloc>[];
    _btConnectionBloc = context.read<BTConnectionBloc>();
    _deviceBlocs = _btConnectionBloc.state.devices.values.toList();

    setupSubsribitions();

    _requestLocationAndBT();
  }

  Future _requestLocationAndBT() async {
    if (Platform.isAndroid) {
      var permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          return;
        }
      }

      bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        if (context.mounted) {
          var result = await enableLocationDialog(context);
          var res = result != null && result;
          if (res) {
            await Geolocator.openLocationSettings();
          }
        }
        return;
      }
    }

    final btEnabled = await _btConnectionBloc.isBluetoothEnabled;
    if (!btEnabled) {
      if (Platform.isAndroid) {
        if (context.mounted) {
          var result = await enableBluetoothDialog(context);
          var res = result != null && result;
          if (res) {
            await _btConnectionBloc.turnBluetoothOn();
            await Future.delayed(const Duration(milliseconds: 600));

            _startScan();
          }
        }
      }
      // BT could be switched on Android only
      else {
        if (context.mounted) {
          await showModalMessage(context, "Warning",
              "Bluetooth is disabled.\nAll functions will be disabled.");
        }
      }
    } else {
      _startScan();
    }
  }

  void setupSubsribitions() {
    _btConnectionStreamSubscription = _btConnectionBloc.stream.listen((event) {
      _isScanning = event.isScanning;
      _deviceBlocs = event.devices.values.toList();
      setState(() {});
    });
  }

  @override
  void setState(VoidCallback fn) {
    if (mounted) {
      super.setState(fn);
    }
  }

  @override
  void dispose() async {
    super.dispose();
    await _btConnectionStreamSubscription.cancel();
  }

  void _startScan() {
    _btConnectionBloc.add(const BTConnectionEvent.startScan());
    setState(() => _isScanning = true);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onVerticalDragEnd: (details) {
        if (!_isScanning && details.primaryVelocity! > 0) {
          _startScan();
        }
      },
      child: Scaffold(
          appBar: AppBar(
            title: Text("Manage CAN devices"),
            bottom: PreferredSize(
                preferredSize: const Size.fromHeight(5),
                child: Visibility(
                  visible: _isScanning,
                  child: LinearProgressIndicator(
                    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                    color: Theme.of(context).colorScheme.primary,
                    minHeight: 5,
                  ),
                )),
          ),
          body: _deviceBlocs.isEmpty
              ? const Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      'Devices not found',
                      textAlign: TextAlign.center,
                      maxLines: 2,
                    ),
                  ),
                )
              : Stack(
                  children: const [
                    SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 30.0),
                        child: _Devices(),
                      ),
                    ),
                  ],
                )),
    );
  }
}

class _Devices extends StatelessWidget {
  const _Devices();

  @override
  Widget build(BuildContext context) {
    return GroupedDevices(
      builder: (connected, available) => Column(
        children: [
          if (available.isNotEmpty)
            CustomGroupTiles(
              title: "Available devices",
              children: [
                for (var device in available)
                  AvailableSensorWidget(
                    deviceBloc: device,
                  )
              ],
            ),
        ],
      ),
    );
  }
}

class AvailableSensorWidget extends StatelessWidget {
  const AvailableSensorWidget({
    Key? key,
    required this.deviceBloc,
  }) : super(key: key);

  final DeviceBloc deviceBloc;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: deviceBloc,
      child: BlocSelector<DeviceBloc, DeviceState, bool>(
        selector: (state) {
          return state.maybeMap(orElse: () => false, available: (_) => true);
        },
        builder: (context, isAvailable) {
          return GestureDetector(
            onTap: () {
              if (isAvailable) {
                deviceBloc.add(const DeviceEvent.connect());
                navigateTo(
                    context: context,
                    nextPage: ManageCanDevicePage(device: deviceBloc));
              }
            },
            child: isAvailable
                ? CustomListTile(
                    title: Text(deviceBloc.state.deviceName),
                    leadingIcon: Icons.bluetooth,
                    trailingValue: "Connect",
                    showArrow: true,
                  )
                : CustomListTile(
                    title: Text(deviceBloc.state.deviceName),
                    leadingIcon: Icons.bluetooth,
                    trailingInput: const CircularProgressIndicator(),
                    showArrow: false,
                  ),
          );
        },
      ),
    );
  }
}
