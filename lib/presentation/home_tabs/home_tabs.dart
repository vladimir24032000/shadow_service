import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:service_app/bloc/navigation_bar/navigation_bar_bloc.dart';
import 'package:service_app/presentation/home_tabs/account_page.dart';
import 'package:service_app/presentation/home_tabs/home_page.dart';
import 'package:service_app/presentation/home_tabs/settings.page.dart';
import 'package:service_app/presentation/widgets/lazy_loaded_indexed_stack/lazy_loaded_indexed_stack.dart';

class HomeTabs extends StatelessWidget {
  const HomeTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationBarBloc, NavigationBarState>(
      builder: (context, state) {
        return LazyLoadIndexedStack(
          index: state.navigationBarItem.index,
          children: const [
            SettingsPage(),
            HomePage(),
            AccountPage(),
          ],
        );
      },
    );
  }
}
