import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:service_app/bloc/firebase/firebase_db_cubit.dart';
import 'package:service_app/bloc/firebase/firebase_email_auth_cubit.dart';
import 'package:service_app/core/firebase/model/user.dart';
import 'package:service_app/core/navigator.dart';
import 'package:service_app/presentation/home_tabs/home_tabs.dart';
import 'package:service_app/presentation/lock_screen/email_signin_page.dart';
import 'package:service_app/presentation/lock_screen/lock_screen_page.dart';
import 'package:service_app/presentation/lock_screen/signup_page.dart';
import 'package:service_app/presentation/theme/theme.dart';
import 'package:service_app/presentation/widgets/custom_button/custom_elevated_button.dart';
import 'package:service_app/presentation/widgets/dialogs/simpleDialog.dart';

class EmailAuthPage extends StatefulWidget {
  const EmailAuthPage({super.key});

  @override
  State<StatefulWidget> createState() => EmailAuthPageState();
}

class EmailAuthPageState extends State<EmailAuthPage> {
  late FirebaseEmailAuthCubit _firebaseEmailAuthCubit;

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pass1Controller = TextEditingController();
  final TextEditingController _pass2Controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _firebaseEmailAuthCubit = FirebaseEmailAuthCubit();
  }

  @override
  void dispose() {
    super.dispose();
    _firebaseEmailAuthCubit.close();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sign Up")),
      body: BlocConsumer<FirebaseEmailAuthCubit, FirebaseEmailAuthState>(
        bloc: _firebaseEmailAuthCubit,
        builder: (context, state) {
          return state.map(
              failure: (value) => _SignUpWidget(
                    emailController: _emailController,
                    pass1Controller: _pass1Controller,
                    pass2Controller: _pass2Controller,
                    firebaseEmailAuthCubit: _firebaseEmailAuthCubit,
                  ),
              requestInProgress: (_) => Stack(
                    children: [
                      _SignUpWidget(
                        emailController: _emailController,
                        pass1Controller: _pass1Controller,
                        pass2Controller: _pass2Controller,
                        firebaseEmailAuthCubit: _firebaseEmailAuthCubit,
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
                    emailController: _emailController,
                    pass1Controller: _pass1Controller,
                    pass2Controller: _pass2Controller,
                    firebaseEmailAuthCubit: _firebaseEmailAuthCubit,
                  ),
              loggedOut: (_) => _SignUpWidget(
                    emailController: _emailController,
                    pass1Controller: _pass1Controller,
                    pass2Controller: _pass2Controller,
                    firebaseEmailAuthCubit: _firebaseEmailAuthCubit,
                  ));
        },
        listener: (context, state) {
          state.mapOrNull(
            loggedIn: (value) {
              navigateTo(
                  context: context,
                  nextPage: const SignUpPage(),
                  newRoot: true);
            },
            failure: (value) async {
              await showModalMessage(context, "Error", value.message);
            },
          );
        },
      ),
    );
  }
}

class _SignUpWidget extends StatelessWidget {
  final TextEditingController emailController;
  final TextEditingController pass1Controller;
  final TextEditingController pass2Controller;

  final FocusNode emailFocusNode = FocusNode();
  final FocusNode pass1FocusNode = FocusNode();
  final FocusNode pass2FocusNode = FocusNode();

  final ValueNotifier<String?> emailNotifier = ValueNotifier<String?>(null);
  final ValueNotifier<String?> pass1Notifier = ValueNotifier<String?>(null);
  final ValueNotifier<String?> pass2Notifier = ValueNotifier<String?>(null);

  final FirebaseEmailAuthCubit firebaseEmailAuthCubit;

  _SignUpWidget(
      {required this.firebaseEmailAuthCubit,
      required this.emailController,
      required this.pass1Controller,
      required this.pass2Controller});

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
    if (pass1Controller.text.isEmpty) {
      pass1Notifier.value = "Field should not be empty";
      return false;
    }
    if (pass2Controller.text.isEmpty) {
      pass2Notifier.value = "Field should not be empty";
      return false;
    }
    if (pass2Controller.text != pass1Controller.text) {
      pass2Notifier.value = "Passwords are not mismatch";
      return false;
    } else {
      pass2Notifier.value = null;
      pass1Notifier.value = null;
      return true;
    }
  }

  bool emailValidate(
      TextEditingController controller, ValueNotifier<String?> notifier) {
    if (controller.text.isEmpty) {
      notifier.value = "Field should not be empty";
      return false;
    } else {
      if (!RegExp(r"^[A-Za-z0-9._+\-\']+@[A-Za-z0-9.\-]+\.[A-Za-z]{2,}$")
          .hasMatch(controller.text)) {
        notifier.value = "Invalid email";
        return false;
      } else {
        notifier.value = null;
        return true;
      }
    }
  }

  void signUp(BuildContext context) {
    if (!commonValidate(emailController, emailNotifier)) {
      emailFocusNode.requestFocus();
      return;
    }
    if (!emailValidate(emailController, emailNotifier)) {
      emailFocusNode.requestFocus();
      return;
    }
    if (!commonValidate(pass1Controller, pass1Notifier)) {
      pass1FocusNode.requestFocus();
      return;
    }
    if (!commonValidate(pass2Controller, pass2Notifier)) {
      pass2FocusNode.requestFocus();
      return;
    }
    if (!passesValidate()) {
      pass2FocusNode.requestFocus();
      return;
    }
    firebaseEmailAuthCubit.signUp(emailController.text, pass1Controller.text);
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
              "Enter email and password",
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          Padding(
              padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
              child: ValueListenableBuilder<String?>(
                valueListenable: emailNotifier,
                builder: (context, value, child) => TextField(
                  style: const TextStyle(color: Colors.white),
                  focusNode: emailFocusNode,
                  controller: emailController,
                  decoration: loginInputDecorationTheme.copyWith(
                      prefixIcon: const Icon(Icons.email),
                      labelText: "Email",
                      hintText: "Enter email",
                      errorText: value),
                  onChanged: (value) {
                    if (commonValidate(emailController, emailNotifier)) {
                      emailValidate(emailController, emailNotifier);
                    }
                  },
                  textInputAction: TextInputAction.next,
                ),
              )),
          Padding(
              padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
              child: ValueListenableBuilder<String?>(
                valueListenable: pass1Notifier,
                builder: (context, value, child) => TextField(
                  style: const TextStyle(color: Colors.white),
                  controller: pass1Controller,
                  focusNode: pass1FocusNode,
                  decoration: loginInputDecorationTheme.copyWith(
                      prefixIcon: const Icon(Icons.password),
                      labelText: "Password",
                      hintText: "Enter password",
                      errorText: value),
                  onChanged: (value) {
                    commonValidate(pass1Controller, pass1Notifier);
                  },
                  textInputAction: TextInputAction.next,
                ),
              )),
          Padding(
              padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
              child: ValueListenableBuilder<String?>(
                valueListenable: pass2Notifier,
                builder: (context, value, child) => TextField(
                  style: const TextStyle(color: Colors.white),
                  focusNode: pass2FocusNode,
                  controller: pass2Controller,
                  decoration: loginInputDecorationTheme.copyWith(
                      prefixIcon: const Icon(Icons.password),
                      labelText: "Repeat password",
                      hintText: "Enter password",
                      errorText: value),
                  onChanged: (value) {
                    if (commonValidate(pass2Controller, pass2Notifier)) {
                      passesValidate();
                    }
                  },
                  textInputAction: TextInputAction.next,
                ),
              )),
          CustomElevatedButton(
            child: Text("SIGN UP"),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                Theme.of(context).colorScheme.primary,
              ),
            ),
            onPressed: () {
              signUp(context);
            },
          ),
          TextButton(
            onPressed: () {
              navigateTo(
                context: context,
                nextPage: const EmailSignPage(),
              );
            },
            child: Text("Sign In"),
          ),
        ],
      ),
    );
  }
}
