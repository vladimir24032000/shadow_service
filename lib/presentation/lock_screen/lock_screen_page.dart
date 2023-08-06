import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:passcode_screen/circle.dart';
import 'package:passcode_screen/keyboard.dart';
import 'package:passcode_screen/passcode_screen.dart';
import 'package:service_app/core/navigator.dart';
import 'package:service_app/presentation/home_tabs/home_tabs.dart';
import 'package:service_app/presentation/lock_screen/lock_screen_cubit/lock_screen_cubit.dart';
import 'package:service_app/presentation/theme/theme.dart';

class LockScreenPage extends StatefulWidget {
  const LockScreenPage({super.key});

  @override
  State<StatefulWidget> createState() => LockScreenPageState();
}

class LockScreenPageState extends State<LockScreenPage> {
  final StreamController<bool> _verificationNotifier =
      StreamController<bool>.broadcast();

  late LockScreenCubit _lockScreenCubit;

  @override
  void initState() {
    super.initState();
    _lockScreenCubit = LockScreenCubit();
    _lockScreenCubit.init();
  }

  void _onPasscodeEntered(String enteredPasscode) {
    _lockScreenCubit.state.mapOrNull(
      hasPin: (value) {
        bool isValid = value.pin == enteredPasscode;
        _verificationNotifier.add(isValid);
      },
    );
  }

  void _onPasscodeCreated(String enteredPasscode) {
    _lockScreenCubit.createPin(enteredPasscode);
    _verificationNotifier.add(true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Shadow")),
        body: BlocBuilder<LockScreenCubit, LockScreenState>(
          bloc: _lockScreenCubit,
          builder: (context, state) {
            return state.map(
                preparing: (_) => const SizedBox.shrink(),
                hasPin: (value) => PasscodeScreen(
                    isValidCallback: () => navigateTo(
                        context: context,
                        nextPage: const HomeTabs(),
                        newRoot: true),
                    backgroundColor: mobileThemeData().scaffoldBackgroundColor,
                    passwordDigits: 4,
                    title: Text("Enter pin code"),
                    passwordEnteredCallback: _onPasscodeEntered,
                    cancelButton: const SizedBox.shrink(),
                    deleteButton: Text('Delete'),
                    shouldTriggerVerification: _verificationNotifier.stream,
                    circleUIConfig: CircleUIConfig(
                        fillColor: Colors.black, borderColor: Colors.black),
                    keyboardUIConfig: KeyboardUIConfig(
                        primaryColor: Colors.black,
                        digitTextStyle:
                            TextStyle(color: Colors.black, fontSize: 30))),
                createPin: (value) => PasscodeScreen(
                      isValidCallback: () => navigateTo(
                          context: context,
                          nextPage: const HomeTabs(),
                          newRoot: true),
                      backgroundColor:
                          mobileThemeData().scaffoldBackgroundColor,
                      passwordDigits: 4,
                      title: Text("Create pin code"),
                      passwordEnteredCallback: _onPasscodeCreated,
                      cancelButton: const SizedBox.shrink(),
                      deleteButton: Text('Delete'),
                      shouldTriggerVerification: _verificationNotifier.stream,
                      circleUIConfig: CircleUIConfig(
                          fillColor: Colors.black, borderColor: Colors.black),
                      keyboardUIConfig: KeyboardUIConfig(
                          primaryColor: Colors.black,
                          digitTextStyle:
                              TextStyle(color: Colors.black, fontSize: 30)),
                    ));
          },
        ));
  }
}
