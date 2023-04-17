import 'dart:async';

import 'package:flutter/material.dart';
import 'package:passcode_screen/passcode_screen.dart';
import 'package:service_app/core/navigator.dart';
import 'package:service_app/presentation/home_tabs/home_tabs.dart';
import 'package:service_app/presentation/theme/theme.dart';

class LockScreenPage extends StatefulWidget {
  const LockScreenPage({super.key});

  @override
  State<StatefulWidget> createState() => LockScreenPageState();
}

class LockScreenPageState extends State<LockScreenPage> {
  final StreamController<bool> _verificationNotifier =
      StreamController<bool>.broadcast();
  void _onPasscodeEntered(String enteredPasscode) {
    bool isValid = '1234' == enteredPasscode;
    _verificationNotifier.add(isValid);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Shadow")),
      body: PasscodeScreen(
        isValidCallback: () => navigateTo(
            context: context, nextPage: const HomeTabs(), newRoot: true),
        backgroundColor: mobileThemeData().scaffoldBackgroundColor,
        passwordDigits: 4,
        title: Text("Enter pin code"),
        passwordEnteredCallback: _onPasscodeEntered,
        cancelButton: const SizedBox.shrink(),
        deleteButton: Text('Delete'),
        shouldTriggerVerification: _verificationNotifier.stream,
      ),
    );
  }
}
