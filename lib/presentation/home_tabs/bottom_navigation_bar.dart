import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:service_app/bloc/navigation_bar/navigation_bar_bloc.dart';

class ServiceAppBottomNavigationBar extends StatelessWidget {
  const ServiceAppBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationBarBloc, NavigationBarState>(
      builder: (context, state) {
        final theme = Theme.of(context);
        //final language = Languages.of(context).bottomNavigationBarText;
        return BottomNavigationBar(
          selectedLabelStyle: TextStyle(color: Colors.white),
          unselectedLabelStyle: TextStyle(color: Colors.white),
          items: [
            BottomNavigationBarItem(
              icon: const Icon(
                Icons.settings,
              ),
              label: "Settings",
            ),
            BottomNavigationBarItem(
              icon: const Icon(
                Icons.bluetooth_drive,
              ),
              label: "Devices",
            ),
            BottomNavigationBarItem(
              icon: const Icon(
                Icons.account_box,
              ),
              label: "Account",
            ),
          ],
          currentIndex: state.navigationBarItem.index,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black38,
          onTap: (index) => navigateToIndex(index, context),
          backgroundColor: theme.appBarTheme.backgroundColor,
        );
      },
    );
  }

  void navigateToIndex(int index, BuildContext context) {
    context.read<NavigationBarBloc>().add(NavigationBarEvent.changeTab(index));
  }
}
