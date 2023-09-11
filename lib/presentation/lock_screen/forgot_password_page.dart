// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:service_app/bloc/firebase/firebase_email_auth_cubit.dart';
// import 'package:service_app/presentation/theme/theme.dart';
// import 'package:service_app/presentation/widgets/custom_button/custom_elevated_button.dart';
// import 'package:service_app/presentation/widgets/dialogs/simpleDialog.dart';

// class ForgotPasswordPage extends StatefulWidget {
//   const ForgotPasswordPage({super.key});

//   @override
//   State<StatefulWidget> createState() => ForgotPasswordPageState();
// }

// class ForgotPasswordPageState extends State<ForgotPasswordPage> {
//   late FirebaseEmailAuthCubit _firebaseEmailAuthCubit;

//   final TextEditingController _emailController = TextEditingController();

//   @override
//   void initState() {
//     super.initState();
//     _firebaseEmailAuthCubit = FirebaseEmailAuthCubit();
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     _firebaseEmailAuthCubit.close();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Reset passowrd")),
//       body: BlocConsumer<FirebaseEmailAuthCubit, FirebaseEmailAuthState>(
//         bloc: _firebaseEmailAuthCubit,
//         builder: (context, state) {
//           return state.map(
//               failure: (value) => _SignUpWidget(
//                     emailController: _emailController,
//                     firebaseEmailAuthCubit: _firebaseEmailAuthCubit,
//                   ),
//               requestInProgress: (_) => Stack(
//                     children: [
//                       _SignUpWidget(
//                         emailController: _emailController,
//                         firebaseEmailAuthCubit: _firebaseEmailAuthCubit,
//                       ),
//                       Container(
//                         color: const Color.fromARGB(80, 0, 0, 0),
//                         child: const Center(
//                           child: CircularProgressIndicator.adaptive(),
//                         ),
//                       )
//                     ],
//                   ),
//               loggedIn: (_) => _SignUpWidget(
//                     emailController: _emailController,
//                     firebaseEmailAuthCubit: _firebaseEmailAuthCubit,
//                   ),
//               loggedOut: (_) => _SignUpWidget(
//                     emailController: _emailController,
//                     firebaseEmailAuthCubit: _firebaseEmailAuthCubit,
//                   ));
//         },
//         listener: (context, state) {
//           state.mapOrNull(
//             loggedOut: (value) {
//               Navigator.of(context).pop();
//             },
//             failure: (value) {
//               showModalMessage(context, "Error", value.message);
//             },
//           );
//         },
//       ),
//     );
//   }
// }

// class _SignUpWidget extends StatelessWidget {
//   final TextEditingController emailController;

//   final FocusNode emailFocusNode = FocusNode();

//   final ValueNotifier<String?> emailNotifier = ValueNotifier<String?>(null);

//   final FirebaseEmailAuthCubit firebaseEmailAuthCubit;

//   _SignUpWidget(
//       {required this.firebaseEmailAuthCubit, required this.emailController});

//   bool commonValidate(
//       TextEditingController controller, ValueNotifier<String?> notifier) {
//     if (controller.text.isEmpty) {
//       notifier.value = "Field should not be empty";
//       return false;
//     } else {
//       notifier.value = null;
//       return true;
//     }
//   }

//   bool emailValidate(
//       TextEditingController controller, ValueNotifier<String?> notifier) {
//     if (controller.text.isEmpty) {
//       notifier.value = "Field should not be empty";
//       return false;
//     } else {
//       if (!RegExp(r"^[A-Za-z0-9._+\-\']+@[A-Za-z0-9.\-]+\.[A-Za-z]{2,}$")
//           .hasMatch(controller.text)) {
//         notifier.value = "Invalid email";
//         return false;
//       } else {
//         notifier.value = null;
//         return true;
//       }
//     }
//   }

//   void signUp(BuildContext context) {
//     if (!commonValidate(emailController, emailNotifier)) {
//       emailFocusNode.requestFocus();
//       return;
//     }
//     if (!emailValidate(emailController, emailNotifier)) {
//       emailFocusNode.requestFocus();
//       return;
//     }
//     firebaseEmailAuthCubit.sendPasswordReset(emailController.text);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(16),
//       child: ListView(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(16),
//             child: Text(
//               "Enter email to reset password",
//               style: Theme.of(context).textTheme.titleLarge,
//             ),
//           ),
//           Padding(
//               padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
//               child: ValueListenableBuilder<String?>(
//                 valueListenable: emailNotifier,
//                 builder: (context, value, child) => TextField(
//                   style: const TextStyle(color: Colors.white),
//                   focusNode: emailFocusNode,
//                   controller: emailController,
//                   decoration: loginInputDecorationTheme.copyWith(
//                       prefixIcon: const Icon(Icons.person),
//                       labelText: "Email",
//                       hintText: "Enter email",
//                       errorText: value),
//                   onChanged: (value) {
//                     if (commonValidate(emailController, emailNotifier)) {
//                       emailValidate(emailController, emailNotifier);
//                     }
//                   },
//                   textInputAction: TextInputAction.next,
//                 ),
//               )),
//           CustomElevatedButton(
//             child: Text("RESET PASSWORD"),
//             style: ButtonStyle(
//               backgroundColor: MaterialStateProperty.all(
//                 Theme.of(context).colorScheme.primary,
//               ),
//             ),
//             onPressed: () {
//               signUp(context);
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }
