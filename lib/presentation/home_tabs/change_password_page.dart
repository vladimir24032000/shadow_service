import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:service_app/bloc/firebase/firebase_db_cubit.dart';
import 'package:service_app/bloc/firebase/firebase_email_auth_cubit.dart';
import 'package:service_app/core/firebase/model/user.dart';
import 'package:service_app/core/navigator.dart';
import 'package:service_app/presentation/home_tabs/home_tabs.dart';
import 'package:service_app/presentation/lock_screen/lock_screen_page.dart';
import 'package:service_app/presentation/lock_screen/signup_page.dart';
import 'package:service_app/presentation/theme/theme.dart';
import 'package:service_app/presentation/widgets/custom_button/custom_elevated_button.dart';
import 'package:service_app/presentation/widgets/dialogs/simpleDialog.dart';

class ChangePasswordPage extends StatefulWidget {
  const ChangePasswordPage({super.key});

  @override
  State<StatefulWidget> createState() => ChangePasswordPageState();
}

class ChangePasswordPageState extends State<ChangePasswordPage> {
  late FirebaseEmailAuthCubit _firebaseEmailAuthCubit;

  final TextEditingController _oldPassController = TextEditingController();
  final TextEditingController _newPass1Controller = TextEditingController();
  final TextEditingController _newPass2Controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _firebaseEmailAuthCubit = FirebaseEmailAuthCubit();
  }

  @override
  void dispose() {
    _firebaseEmailAuthCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Change password")),
      body: BlocConsumer<FirebaseEmailAuthCubit, FirebaseEmailAuthState>(
        bloc: _firebaseEmailAuthCubit,
        builder: (context, state) {
          return state.map(
              failure: (value) => _SignUpWidget(
                    firebaseEmailAuthCubit: _firebaseEmailAuthCubit,
                    oldPassController: _oldPassController,
                    newPass1Controller: _newPass1Controller,
                    newPass2Controller: _newPass2Controller,
                  ),
              requestInProgress: (_) => Stack(
                    children: [
                      _SignUpWidget(
                        firebaseEmailAuthCubit: _firebaseEmailAuthCubit,
                        oldPassController: _oldPassController,
                        newPass1Controller: _newPass1Controller,
                        newPass2Controller: _newPass2Controller,
                      ),
                      Container(
                        color: const Color.fromARGB(80, 0, 0, 0),
                        child: const Center(
                          child: CircularProgressIndicator.adaptive(),
                        ),
                      )
                    ],
                  ),
              loggedIn: (_) => _SignUpWidget(
                    firebaseEmailAuthCubit: _firebaseEmailAuthCubit,
                    oldPassController: _oldPassController,
                    newPass1Controller: _newPass1Controller,
                    newPass2Controller: _newPass2Controller,
                  ),
              loggedOut: (_) => _SignUpWidget(
                    firebaseEmailAuthCubit: _firebaseEmailAuthCubit,
                    oldPassController: _oldPassController,
                    newPass1Controller: _newPass1Controller,
                    newPass2Controller: _newPass2Controller,
                  ));
        },
        listener: (context, state) {
          state.mapOrNull(
            loggedIn: (value) {
              Navigator.of(context).pop();
            },
            failure: (value) {
              showModalMessage(context, "Error", value.message);
            },
          );
        },
      ),
    );
  }
}

class _SignUpWidget extends StatelessWidget {
  final TextEditingController oldPassController;
  final TextEditingController newPass1Controller;
  final TextEditingController newPass2Controller;

  final FocusNode oldPassFocusNode = FocusNode();
  final FocusNode newPass1FocusNode = FocusNode();
  final FocusNode newPass2FocusNode = FocusNode();

  final ValueNotifier<String?> oldPassNotifier = ValueNotifier<String?>(null);
  final ValueNotifier<String?> newPass1Notifier = ValueNotifier<String?>(null);
  final ValueNotifier<String?> newPass2Notifier = ValueNotifier<String?>(null);

  final FirebaseEmailAuthCubit firebaseEmailAuthCubit;

  _SignUpWidget(
      {required this.firebaseEmailAuthCubit,
      required this.oldPassController,
      required this.newPass1Controller,
      required this.newPass2Controller});

  bool commonValidate(
      TextEditingController controller, ValueNotifier<String?> notifier) {
    if (controller.text.isEmpty) {
      notifier.value = "Field should not be empty";
      return false;
    } else {
      notifier.value = null;
      return true;
    }
  }

  bool passesValidate() {
    if (newPass1Controller.text.isEmpty) {
      newPass1Notifier.value = "Field should not be empty";
      return false;
    }
    if (newPass2Controller.text.isEmpty) {
      newPass2Notifier.value = "Field should not be empty";
      return false;
    }
    if (newPass1Controller.text != newPass2Controller.text) {
      newPass2Notifier.value = "Passwords are not mismatch";
      return false;
    } else {
      newPass1Notifier.value = null;
      newPass2Notifier.value = null;
      return true;
    }
  }

  void changePassword(BuildContext context) {
    if (!commonValidate(oldPassController, oldPassNotifier)) {
      oldPassFocusNode.requestFocus();
      return;
    }
    if (!commonValidate(newPass1Controller, newPass1Notifier)) {
      newPass1FocusNode.requestFocus();
      return;
    }
    if (!commonValidate(newPass2Controller, newPass2Notifier)) {
      newPass2FocusNode.requestFocus();
      return;
    }
    if (!passesValidate()) {
      newPass2FocusNode.requestFocus();
      return;
    }
    firebaseEmailAuthCubit.changePassword(
        oldPassController.text, newPass2Controller.text);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              "Enter old and new password",
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          Padding(
              padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
              child: ValueListenableBuilder<String?>(
                valueListenable: oldPassNotifier,
                builder: (context, value, child) => TextField(
                  style: const TextStyle(color: Colors.black),
                  focusNode: oldPassFocusNode,
                  controller: oldPassController,
                  decoration: loginInputDecorationTheme.copyWith(
                      prefixIcon: const Icon(Icons.person),
                      labelText: "Old password",
                      hintText: "Enter old password",
                      errorText: value),
                  onChanged: (value) {
                    commonValidate(oldPassController, oldPassNotifier);
                  },
                  textInputAction: TextInputAction.next,
                ),
              )),
          Padding(
              padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
              child: ValueListenableBuilder<String?>(
                valueListenable: newPass1Notifier,
                builder: (context, value, child) => TextField(
                  style: const TextStyle(color: Colors.black),
                  controller: newPass1Controller,
                  focusNode: newPass1FocusNode,
                  decoration: loginInputDecorationTheme.copyWith(
                      prefixIcon: const Icon(Icons.business),
                      labelText: "New password",
                      hintText: "Enter new password",
                      errorText: value),
                  onChanged: (value) {
                    commonValidate(newPass1Controller, newPass1Notifier);
                  },
                  textInputAction: TextInputAction.next,
                ),
              )),
          Padding(
              padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
              child: ValueListenableBuilder<String?>(
                valueListenable: newPass2Notifier,
                builder: (context, value, child) => TextField(
                  style: const TextStyle(color: Colors.black),
                  controller: newPass2Controller,
                  focusNode: newPass2FocusNode,
                  decoration: loginInputDecorationTheme.copyWith(
                      prefixIcon: const Icon(Icons.business),
                      labelText: "New password",
                      hintText: "Repeat new password",
                      errorText: value),
                  onChanged: (value) {
                    commonValidate(newPass2Controller, newPass2Notifier);
                  },
                  textInputAction: TextInputAction.next,
                ),
              )),
          CustomElevatedButton(
            child: Text("CHANGE"),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                Theme.of(context).colorScheme.primary,
              ),
            ),
            onPressed: () {
              changePassword(context);
            },
          ),
          // TextButton(
          //   onPressed: () {},
          //   child: Text("Forgot password?"),
          // ),
        ],
      ),
    );
  }
}
