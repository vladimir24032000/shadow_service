import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:service_app/presentation/home_tabs/bottom_navigation_bar.dart';
import 'package:service_app/presentation/widgets/list_tile/custom_group_tiles.dart';
import 'package:service_app/presentation/widgets/list_tile/custom_list_tile.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({
    Key? key,
  }) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPage();
}

class _SettingsPage extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
        automaticallyImplyLeading: false,
      ),
      bottomNavigationBar: const ServiceAppBottomNavigationBar(),
      body: ListView(
        children: [
          // GeneralSection(),
          // NotificationSection(),
          InfoLegalSection(),
        ],
      ),
    );
  }
}

class InfoLegalSection extends StatelessWidget {
  const InfoLegalSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomGroupTiles(
      setIconIndentDivider: true,
      title: "About",
      children: [
        CustomListTile(
          height: 70,
          onPressed: () {
            // navigateTo(context: context, nextPage: const InfoPage());
          },
          title: Text("Feedback"),
          leadingIcon: Icons.feedback,
          showArrow: true,
        ),
        CustomListTile(
          height: 70,
          onPressed: () {
            // navigateTo(context: context, nextPage: const InfoPage());
          },
          title: Text("About the app"),
          leadingIcon: Icons.info,
          showArrow: true,
        ),
        CustomListTile(
          height: 70,
          onPressed: () {
            // navigateTo(context: context, nextPage: const InfoPage());
          },
          title: Text("Help"),
          leadingIcon: Icons.help,
          showArrow: true,
        ),
      ],
    );
  }
}
