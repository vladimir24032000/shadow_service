import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:service_app/bloc/bluetooth/connection/connection_bloc.dart';
import 'package:service_app/bloc/bluetooth/device_bloc/device_bloc.dart';

class GroupedDevices extends StatelessWidget {
  const GroupedDevices({
    super.key,
    required this.builder,
  });

  final Widget Function(List<DeviceBloc> connected, List<DeviceBloc> available)
      builder;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BTConnectionBloc, BTConnectionState>(
      builder: (context, state) {
        final connectedDevices = state.devices.values
            .where(
              (element) => element.state.maybeMap(
                connected: (_) => true,
                orElse: () => false,
              ),
            )
            .toList();
        final notConnectedDevices = state.devices.values
            .where(
              (element) => element.state.maybeMap(
                connected: (_) => false,
                orElse: () => true,
              ),
            )
            .toList();
        return builder(
          connectedDevices,
          notConnectedDevices,
        );
      },
    );
  }
}
