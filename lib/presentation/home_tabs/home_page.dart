import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:service_app/bloc/api/api_cubit.dart';
import 'package:service_app/core/navigator.dart';
import 'package:service_app/presentation/home_tabs/bottom_navigation_bar.dart';
import 'package:service_app/presentation/manage_can_devices/connect_can_devices_page.dart';
import 'package:service_app/presentation/widgets/custom_button/custom_elevated_button.dart';
import 'package:service_app/presentation/widgets/logo_widget/logo_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          const Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: 25.0),
              child: Align(
                alignment: Alignment.topCenter,
                child: LogoWidget(),
              ),
            ),
          ),
          if (context.read<ApiCubit>().user != null &&
              context.read<ApiCubit>().user!.is_verified_by_admin)
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: ConstrainedBox(
                    constraints:
                        const BoxConstraints(maxWidth: 320, minWidth: 300),
                    child: const _ManageImmobilizersPageButton(),
                  ),
                ),
              ),
            ),
          if (context.read<ApiCubit>().user != null &&
              context.read<ApiCubit>().user!.is_verified_by_admin)
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: ConstrainedBox(
                    constraints:
                        const BoxConstraints(maxWidth: 320, minWidth: 300),
                    child: const _ManageCanDevicesPageButton(),
                  ),
                ),
              ),
            ),
          if (context.read<ApiCubit>().user == null ||
              !context.read<ApiCubit>().user!.is_verified_by_admin)
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: ConstrainedBox(
                    constraints:
                        const BoxConstraints(maxWidth: 320, minWidth: 300),
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Wait Activation by the administrator to continue running.\n Restart the application after activation.",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
            )
        ],
      ),
      bottomNavigationBar: const ServiceAppBottomNavigationBar(),
    );
  }
}

class _ManageImmobilizersPageButton extends StatelessWidget {
  const _ManageImmobilizersPageButton();

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
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            Colors.grey,
          ),
        ),
        child: const Text("MANAGE IMMOBILIZERS"),
      ),
    );
  }
}

class _ManageCanDevicesPageButton extends StatelessWidget {
  const _ManageCanDevicesPageButton();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CustomElevatedButton(
        onPressed: () {
          navigateTo(
            context: context,
            nextPage: const ConnectCanDevicesPage(),
          );
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            Theme.of(context).colorScheme.primary,
          ),
        ),
        child: const Text("MANAGE BLUETOOTH DEVICES"),
      ),
    );
  }
}
