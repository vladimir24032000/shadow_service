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

class EmailSignPage extends StatefulWidget {
  const EmailSignPage({super.key});

  @override
  State<StatefulWidget> createState() => EmailSignPageState();
}

class EmailSignPageState extends State<EmailSignPage> {
  late FirebaseEmailAuthCubit _firebaseEmailAuthCubit;

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();

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
      appBar: AppBar(title: Text("Sign In")),
      body: BlocConsumer<FirebaseEmailAuthCubit, FirebaseEmailAuthState>(
        bloc: _firebaseEmailAuthCubit,
        builder: (context, state) {
          return state.map(
              failure: (value) => _SignUpWidget(
                    emailController: _emailController,
                    passController: _passController,
                    firebaseEmailAuthCubit: _firebaseEmailAuthCubit,
                  ),
              requestInProgress: (_) => Stack(
                    children: [
                      _SignUpWidget(
                        emailController: _emailController,
                        passController: _passController,
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
                    passController: _passController,
                    firebaseEmailAuthCubit: _firebaseEmailAuthCubit,
                  ),
              loggedOut: (_) => _SignUpWidget(
                    emailController: _emailController,
                    passController: _passController,
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
  final TextEditingController emailController;
  final TextEditingController passController;

  final FocusNode emailFocusNode = FocusNode();
  final FocusNode passFocusNode = FocusNode();

  final ValueNotifier<String?> emailNotifier = ValueNotifier<String?>(null);
  final ValueNotifier<String?> passNotifier = ValueNotifier<String?>(null);

  final FirebaseEmailAuthCubit firebaseEmailAuthCubit;

  _SignUpWidget(
      {required this.firebaseEmailAuthCubit,
      required this.emailController,
      required this.passController});

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
    if (!commonValidate(passController, passNotifier)) {
      passFocusNode.requestFocus();
      return;
    }
    firebaseEmailAuthCubit.login(emailController.text, passController.text);
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
                  style: const TextStyle(color: Colors.black),
                  focusNode: emailFocusNode,
                  controller: emailController,
                  decoration: loginInputDecorationTheme.copyWith(
                      prefixIcon: const Icon(Icons.person),
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
                valueListenable: passNotifier,
                builder: (context, value, child) => TextField(
                  style: const TextStyle(color: Colors.black),
                  controller: passController,
                  focusNode: passFocusNode,
                  decoration: loginInputDecorationTheme.copyWith(
                      prefixIcon: const Icon(Icons.business),
                      labelText: "Password",
                      hintText: "Enter password",
                      errorText: value),
                  onChanged: (value) {
                    commonValidate(passController, passNotifier);
                  },
                  textInputAction: TextInputAction.next,
                ),
              )),
          CustomElevatedButton(
            child: Text("LOG IN"),
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
            onPressed: () {},
            child: Text("Forgot password?"),
          ),
        ],
      ),
    );
  }
}
