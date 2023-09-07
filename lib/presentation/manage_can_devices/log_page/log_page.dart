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
import 'package:service_app/presentation/manage_can_devices/log_page/log_page_cubit.dart';
import 'package:service_app/presentation/manage_can_devices/log_page/log_page_state.dart';
import 'package:service_app/presentation/widgets/custom_button/custom_elevated_button.dart';
import 'package:service_app/presentation/widgets/dialogs/firmware_upload_error_dialog.dart';
import 'package:service_app/presentation/widgets/dialogs/log_range_dialog.dart';
import 'package:service_app/presentation/widgets/dialogs/simpleDialog.dart';
import 'package:service_app/presentation/widgets/dialogs/uploading_dialog.dart';

import '../../widgets/dialogs/show_cancel_upload_dialog.dart';

class LogPage extends StatefulWidget {
  const LogPage(
      {super.key, required this.device, required this.connctedDevice});
  final ConnectedDeviceBloc connctedDevice;
  final DeviceBloc device;
  @override
  State<StatefulWidget> createState() => _LogPageState();
}

class _LogPageState extends State<LogPage> {
  late LogPageCubit _logPageCubit;
  @override
  void initState() {
    super.initState();
    _logPageCubit = LogPageCubit(connectedDevice: widget.connctedDevice);
    _logPageCubit.readFauiluresAsset(context);
  }

  @override
  void dispose() {
    _logPageCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return true;
      },
      child: Scaffold(
        appBar: AppBar(title: Text("LOG")),
        body: Padding(
          padding: const EdgeInsets.all(0),
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
            child: BlocConsumer<ConnectedDeviceBloc, ConnectedDeviceBlocState>(
                bloc: widget.connctedDevice,
                builder: (context, state) {
                  return _LogWidget(
                    connectedDevice: widget.connctedDevice,
                    device: widget.device,
                    logPageCubit: _logPageCubit,
                  );
                },
                listener: (context, state) {}),
          ),
        ),
      ),
    );
  }
}

class _LogWidget extends StatelessWidget {
  final ConnectedDeviceBloc connectedDevice;
  final DeviceBloc device;
  final LogPageCubit logPageCubit;

  const _LogWidget({
    required this.connectedDevice,
    required this.device,
    required this.logPageCubit,
  });
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LogPageCubit, LogPageState>(
      listener: (context, state) async {
        switch (state) {
          case FailedLogPageState value:
            await showModalMessage(context, "Error", value.message);
            logPageCubit.setInitState();
            break;
          default:
        }
      },
      bloc: logPageCubit,
      builder: (context, state) => Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(28.0),
            child: ListView(
              children: [
                const Text("Log info"),
                Row(
                  children: [
                    Text("Errors count: "),
                    Text(logPageCubit.errorsCount.toString())
                  ],
                ),
                Row(
                  children: [
                    Text("Logs count: "),
                    Text(logPageCubit.logsCount.toString())
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DropdownButtonFormField<btpckg.DeviceLogLevel>(
                    dropdownColor: Theme.of(context).scaffoldBackgroundColor,
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    isDense: true,
                    value: logPageCubit.logLevel,
                    hint: const Text(
                      "Select log level",
                    ),
                    items: btpckg.DeviceLogLevel.values
                        .map((e) => DropdownMenuItem(
                              value: e,
                              child: Text(e.index.toString()),
                            ))
                        .toList(),
                    onChanged: (value) {
                      logPageCubit.logLevel = value;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomElevatedButton(
                    onPressed: () async {
                      await logPageCubit.setLogLevel();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).colorScheme.primary,
                    ),
                    child: const Text("Set log level"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomElevatedButton(
                    onPressed: () async {
                      await logPageCubit.clearLog();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).colorScheme.primary,
                    ),
                    child: const Text("Clear logs"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomElevatedButton(
                    onPressed: () async {
                      await logPageCubit.getLogInfo();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).colorScheme.primary,
                    ),
                    child: const Text("Get log info"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomElevatedButton(
                    onPressed: () async {
                      final minMax = await showLogRangeDialog(
                          context, 0, logPageCubit.logsCount);
                      if (minMax == null) {
                        return;
                      }
                      if (minMax.$1 == null || minMax.$2 == null) {
                        return;
                      }

                      await logPageCubit.downloadRange(minMax.$1!, minMax.$2!);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).colorScheme.primary,
                    ),
                    child: const Text("Download logs"),
                  ),
                ),
                Text("Logs are below"),
                SizedBox(
                  height: 200,
                  child: ListView(children: [
                    for (final log in logPageCubit.logs)
                      logPageCubit.failures[log.id] != null
                          ? Text(log.toString() +
                              '\n' +
                              logPageCubit.failures[log.id]!)
                          : Text(log.toString() +
                              '\n' +
                              "ERROR. Description not found")
                  ]),
                )
              ],
            ),
          ),
          state is InProgressLogPageState
              ? Container(
                  color: const Color.fromARGB(80, 0, 0, 0),
                  child: const Center(
                    child: CircularProgressIndicator(),
                  ),
                )
              : const SizedBox.shrink()
        ],
      ),
    );
  }
}
