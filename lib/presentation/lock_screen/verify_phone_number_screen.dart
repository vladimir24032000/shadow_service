import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_phone_auth_handler/firebase_phone_auth_handler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:service_app/bloc/firebase/firebase_db_cubit.dart';
import 'package:service_app/core/navigator.dart';
import 'package:service_app/presentation/lock_screen/lock_screen_page.dart';
import 'package:service_app/presentation/lock_screen/signup_page.dart';
import 'package:service_app/presentation/widgets/dialogs/snackbar.dart';
import 'package:service_app/presentation/widgets/loading_screen/loading_screen.dart';
import 'package:service_app/presentation/widgets/pin_input/pin_input_field.dart';

class VerifyPhoneNumberScreen extends StatefulWidget {
  final String phoneNumber;

  const VerifyPhoneNumberScreen({
    Key? key,
    required this.phoneNumber,
  }) : super(key: key);

  @override
  State<VerifyPhoneNumberScreen> createState() =>
      _VerifyPhoneNumberScreenState();
}

class _VerifyPhoneNumberScreenState extends State<VerifyPhoneNumberScreen>
    with WidgetsBindingObserver {
  bool isKeyboardVisible = false;

  late final ScrollController scrollController;

  @override
  void initState() {
    scrollController = ScrollController();
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    scrollController.dispose();
    super.dispose();
  }

  @override
  void didChangeMetrics() {
    final bottomViewInsets = WidgetsBinding.instance.window.viewInsets.bottom;
    isKeyboardVisible = bottomViewInsets > 0;
  }

  // scroll to bottom of screen, when pin input field is in focus.
  Future<void> _scrollToBottomOnKeyboardOpen() async {
    while (!isKeyboardVisible) {
      await Future.delayed(const Duration(milliseconds: 50));
    }

    await Future.delayed(const Duration(milliseconds: 250));

    await scrollController.animateTo(
      scrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 250),
      curve: Curves.easeIn,
    );
  }

  @override
  Widget build(BuildContext context) {
    return FirebasePhoneAuthHandler(
      phoneNumber: widget.phoneNumber,
      signOutOnSuccessfulVerification: false,
      sendOtpOnInitialize: true,
      linkWithExistingUser: false,
      autoRetrievalTimeOutDuration: const Duration(seconds: 60),
      otpExpirationDuration: const Duration(seconds: 60),
      onCodeSent: () {},
      onLoginSuccess: (userCredential, autoVerified) async {
        final user = await context.read<FirebaseDbCubit>().getUserIfExists();
        if (user == null && context.mounted) {
          navigateTo(
              context: context, nextPage: const SignUpPage(), newRoot: true);
        } else {
          navigateTo(
            context: context,
            nextPage: const LockScreenPage(),
            newRoot: true,
          );
        }
      },
      onLoginFailed: (authException, stackTrace) {
        switch (authException.code) {
          case 'invalid-phone-number':
            // invalid phone number
            return showSnackBar(context, 'Invalid phone number');
          case 'invalid-verification-code':
            // invalid otp entered
            return showSnackBar(context, 'The entered code is invalid');
          // handle other error codes
          default:
            showSnackBar(context, authException.code);
          // handle error further if needed
        }
      },
      onError: (error, stackTrace) {
        showSnackBar(context, 'An error occurred!');
      },
      builder: (context, controller) {
        return Scaffold(
          appBar: AppBar(
            leadingWidth: 0,
            leading: const SizedBox.shrink(),
            title: const Text('Verify Phone Number'),
          ),
          body: controller.isSendingCode
              ? LoadingScreen()
              : ListView(
                  padding: const EdgeInsets.all(20),
                  controller: scrollController,
                  children: [
                    Text(
                      "We have sent an SMS with a verification code to",
                      style: Theme.of(context).textTheme.titleLarge,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      widget.phoneNumber,
                      style: Theme.of(context).textTheme.titleLarge,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 10),
                    const Divider(),
                    Text(
                      'Enter a code',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(height: 15),
                    PinInputField(
                      length: 6,
                      onFocusChange: (hasFocus) async {
                        if (hasFocus) await _scrollToBottomOnKeyboardOpen();
                      },
                      onSubmit: (enteredOtp) async {
                        final verified = await controller.verifyOtp(enteredOtp);
                        if (verified) {
                          // number verify success
                          // will call onLoginSuccess handler
                        } else {
                          // phone verification failed
                          // will call onLoginFailed or onError callbacks with the error
                        }
                      },
                    ),
                    if (controller.codeSent)
                      TextButton(
                        onPressed: controller.isOtpExpired
                            ? () async {
                                await controller.sendOTP();
                              }
                            : null,
                        child: Text(
                          controller.isOtpExpired
                              ? 'Resend'
                              : '${controller.otpExpirationTimeLeft.inSeconds}s',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                  ],
                ),
        );
      },
    );
  }
}
