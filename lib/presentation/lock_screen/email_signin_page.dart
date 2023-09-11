import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:service_app/bloc/api/api_cubit.dart';
import 'package:service_app/bloc/api/api_state.dart';
import 'package:service_app/bloc/firebase/firebase_db_cubit.dart';
import 'package:service_app/bloc/firebase/firebase_email_auth_cubit.dart';
import 'package:service_app/core/firebase/model/user.dart';
import 'package:service_app/core/navigator.dart';
import 'package:service_app/presentation/home_tabs/home_tabs.dart';
import 'package:service_app/presentation/lock_screen/email_auth_page.dart';
import 'package:service_app/presentation/lock_screen/forgot_password_page.dart';
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
  late ApiCubit _apiCubit;

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _apiCubit = context.read<ApiCubit>();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sign In")),
      body: BlocConsumer<ApiCubit, ApiState>(
        bloc: _apiCubit,
        builder: (context, state) => switch (state) {
          LoggedInApiState() => _SignUpWidget(
              emailController: _emailController,
              passController: _passController,
              apiCubit: _apiCubit,
            ),
          LoggedOutApiState() => _SignUpWidget(
              emailController: _emailController,
              passController: _passController,
              apiCubit: _apiCubit,
            ),
          InProgressApiState() => Stack(
              children: [
                _SignUpWidget(
                  emailController: _emailController,
                  passController: _passController,
                  apiCubit: _apiCubit,
                ),
                Container(
                  color: const Color.fromARGB(80, 0, 0, 0),
                  child: const Center(
                    child: CircularProgressIndicator.adaptive(),
                  ),
                )
              ],
            ),
          FailedApiState() => _SignUpWidget(
              emailController: _emailController,
              passController: _passController,
              apiCubit: _apiCubit,
            ),
        },
        listener: (context, state) {
          switch (state) {
            case LoggedInApiState():
              navigateTo(
                  context: context,
                  nextPage: const LockScreenPage(),
                  newRoot: true);
              break;
            case FailedApiState value:
              showModalMessage(context, "Error", value.message);
            default:
          }
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

  final ApiCubit apiCubit;

  _SignUpWidget(
      {required this.apiCubit,
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

  Future<void> signUp(BuildContext context) async {
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
    await apiCubit.authWithEmailAndPass(
        emailController.text, passController.text);
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
                  style: const TextStyle(color: Colors.white),
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
            onPressed: () {
              //navigateTo(context: context, nextPage: const EmailAuthPage());
            },
            child: Text("Sign Up"),
          ),
          TextButton(
            onPressed: () {
              // navigateTo(
              //     context: context, nextPage: const ForgotPasswordPage());
            },
            child: Text("Forgot password?"),
          ),
        ],
      ),
    );
  }
}
