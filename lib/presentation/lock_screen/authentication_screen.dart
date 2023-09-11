// import 'package:easy_container/easy_container.dart';
// import 'package:flutter/material.dart';
// import 'package:intl_phone_field/country_picker_dialog.dart';
// import 'package:intl_phone_field/intl_phone_field.dart';
// import 'package:service_app/core/navigator.dart';
// import 'package:service_app/presentation/lock_screen/email_auth_page.dart';
// import 'package:service_app/presentation/lock_screen/verify_phone_number_screen.dart';
// import 'package:service_app/presentation/widgets/custom_button/custom_elevated_button.dart';
// import 'package:service_app/presentation/widgets/dialogs/snackbar.dart';
// import 'package:service_app/presentation/widgets/logo_widget/logo_widget.dart';

// class AuthenticationScreen extends StatefulWidget {
//   const AuthenticationScreen({
//     Key? key,
//   }) : super(key: key);

//   @override
//   // ignore: library_private_types_in_public_api
//   _AuthenticationScreenState createState() => _AuthenticationScreenState();
// }

// class _AuthenticationScreenState extends State<AuthenticationScreen> {
//   String? phoneNumber;
//   bool isNullOrBlank(String? data) => data?.trim().isEmpty ?? true;
//   final _formKey = GlobalKey<FormState>();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // resizeToAvoidBottomInset: false,
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(15),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               const LogoWidget(),
//               const SizedBox(height: 15),
//               Text(
//                 "We will send an SMS with a verification code",
//                 textAlign: TextAlign.center,
//                 style: Theme.of(context).textTheme.titleLarge,
//               ),
//               const SizedBox(height: 15),
//               EasyContainer(
//                 elevation: 0,
//                 borderRadius: 10,
//                 color: Colors.transparent,
//                 child: Form(
//                   key: _formKey,
//                   child: IntlPhoneField(
//                     decoration: InputDecoration(
//                         helperStyle: TextStyle(
//                             color: Theme.of(context).colorScheme.onPrimary),
//                         errorStyle: TextStyle(
//                             color: Theme.of(context).colorScheme.onPrimary)),
//                     pickerDialogStyle: PickerDialogStyle(
//                         backgroundColor:
//                             Theme.of(context).colorScheme.onPrimary,
//                         searchFieldCursorColor:
//                             Theme.of(context).colorScheme.onPrimary),
//                     autofocus: false,
//                     invalidNumberMessage: 'Invalid phone number',
//                     textAlignVertical: TextAlignVertical.center,
//                     style: const TextStyle(fontSize: 25),
//                     onChanged: (phone) => phoneNumber = phone.completeNumber,
//                     initialCountryCode: 'RU',
//                     flagsButtonPadding: const EdgeInsets.only(right: 10),
//                     showDropdownIcon: false,
//                     keyboardType: TextInputType.phone,
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 15),
//               CustomElevatedButton(
//                 onPressed: () async {
//                   if (isNullOrBlank(phoneNumber) ||
//                       !_formKey.currentState!.validate()) {
//                     showSnackBar(context, 'Please enter a valid phone number!');
//                   } else {
//                     navigateTo(
//                         context: context,
//                         nextPage: VerifyPhoneNumberScreen(
//                           phoneNumber: phoneNumber!,
//                         ));
//                   }
//                 },
//                 child: ConstrainedBox(
//                   constraints:
//                       const BoxConstraints(maxWidth: 320, minWidth: 300),
//                   child: const Text(
//                     'VERIFY',
//                     textAlign: TextAlign.center,
//                   ),
//                 ),
//               ),
//               TextButton(
//                 onPressed: () {
//                   navigateTo(context: context, nextPage: const EmailAuthPage());
//                 },
//                 child: Text(
//                   "Use Email",
//                   style: TextStyle(
//                     color: Theme.of(context).colorScheme.onPrimary,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
