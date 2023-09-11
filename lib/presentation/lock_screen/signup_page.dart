import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:service_app/bloc/api/api_cubit.dart';
import 'package:service_app/bloc/firebase/firebase_db_cubit.dart';
import 'package:service_app/core/api/model/user.dart';
import 'package:service_app/core/firebase/model/user.dart';
import 'package:service_app/core/navigator.dart';
import 'package:service_app/presentation/home_tabs/home_tabs.dart';
import 'package:service_app/presentation/lock_screen/lock_screen_page.dart';
import 'package:service_app/presentation/theme/theme.dart';
import 'package:service_app/presentation/widgets/custom_button/custom_elevated_button.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key, required this.email, required this.password});
  final String email;
  final String password;

  @override
  State<StatefulWidget> createState() => SignUpPageState();
}

class SignUpPageState extends State<SignUpPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController postController = TextEditingController();
  final TextEditingController cityCountryController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController companyController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController countryController = TextEditingController();

  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController patronymicController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sign Up")),
      body: BlocBuilder<FirebaseDbCubit, FirebaseDBState>(
        builder: (context, state) {
          return state.map(
              requestInProgress: (_) => Stack(
                    children: [
                      _SignUpWidget(
                        addressController: addressController,
                        companyController: companyController,
                        postController: postController,
                        cityController: cityController,
                        countryController: countryController,
                        firstNameController: firstNameController,
                        lastNameController: lastNameController,
                        patronymicController: patronymicController,
                        phoneController: phoneController,
                      ),
                      Container(
                        color: const Color.fromARGB(80, 0, 0, 0),
                        child: const Center(
                          child: CircularProgressIndicator.adaptive(),
                        ),
                      )
                    ],
                  ),
              userExists: (_) => _SignUpWidget(
                    addressController: addressController,
                    cityCountryController: cityCountryController,
                    companyController: companyController,
                    nameController: nameController,
                    postController: postController,
                  ),
              userNotExists: (_) => _SignUpWidget(
                    addressController: addressController,
                    cityCountryController: cityCountryController,
                    companyController: companyController,
                    nameController: nameController,
                    postController: postController,
                  ));
        },
      ),
    );
  }
}

class _SignUpWidget extends StatelessWidget {
  final TextEditingController firstNameController;
  final TextEditingController lastNameController;
  final TextEditingController patronymicController;

  final TextEditingController postController;
  final TextEditingController cityController;
  final TextEditingController countryController;

  final TextEditingController addressController;
  final TextEditingController companyController;
  final TextEditingController phoneController;

  final FocusNode firstNameFocusNode = FocusNode();
  final FocusNode lastNameFocusNode = FocusNode();
  final FocusNode patronymicFocusNode = FocusNode();
  final FocusNode phoneFocusNode = FocusNode();

  final FocusNode postFocusNode = FocusNode();
  final FocusNode countryFocusNode = FocusNode();
  final FocusNode cityFocusNode = FocusNode();

  final FocusNode addressFocusNode = FocusNode();
  final FocusNode companyFocusNode = FocusNode();

  final ValueNotifier<String?> firstNameNotifier = ValueNotifier<String?>(null);
  final ValueNotifier<String?> lastNameNotifier = ValueNotifier<String?>(null);
  final ValueNotifier<String?> patronymicNotifier =
      ValueNotifier<String?>(null);
  final ValueNotifier<String?> phoneNotifier = ValueNotifier<String?>(null);

  final ValueNotifier<String?> postNotifier = ValueNotifier<String?>(null);
  final ValueNotifier<String?> cityNotifier = ValueNotifier<String?>(null);
  final ValueNotifier<String?> countryNotifier = ValueNotifier<String?>(null);
  final ValueNotifier<String?> addressNotifier = ValueNotifier<String?>(null);
  final ValueNotifier<String?> companyNotifier = ValueNotifier<String?>(null);

  _SignUpWidget({
    required this.postController,
    required this.addressController,
    required this.companyController,
    required this.cityController,
    required this.countryController,
    required this.firstNameController,
    required this.lastNameController,
    required this.patronymicController,
    required this.phoneController,
  });

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

  void signUp(BuildContext context) {
    if (!commonValidate(firstNameController, firstNameNotifier)) {
      firstNameFocusNode.requestFocus();
      return;
    }
    if (!commonValidate(lastNameController, lastNameNotifier)) {
      lastNameFocusNode.requestFocus();
      return;
    }
    // if (!commonValidate(patronymicController, patronymicNotifier)) {
    //   patronymicFocusNode.requestFocus();
    //   return;
    // }
    if (!commonValidate(companyController, companyNotifier)) {
      companyFocusNode.requestFocus();
      return;
    }
    if (!commonValidate(postController, postNotifier)) {
      postFocusNode.requestFocus();
      return;
    }
    if (!commonValidate(countryController, countryNotifier)) {
      companyFocusNode.requestFocus();
      return;
    }
    if (!commonValidate(cityController, cityNotifier)) {
      cityFocusNode.requestFocus();
      return;
    }
    if (!commonValidate(addressController, addressNotifier)) {
      addressFocusNode.requestFocus();
      return;
    }
    if (!commonValidate(phoneController, phoneNotifier)) {
      phoneFocusNode.requestFocus();
      return;
    }
    context.read<ApiCubit>().createUser(
          User(
              first_name: firstNameController.text,
              last_name: lastNameController.text,
              patronymic: patronymicController.text,
              job_title: postController.text,
              city: cityController.text,
              country: companyController.text,
              organization: companyController.text,
              installation_center_address: addressController.text,
              email: "",
              password: "",
              phone_number: phoneController.text,
              is_verified_by_admin: false),
        );
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
              "Enter your information",
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          Padding(
              padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
              child: ValueListenableBuilder<String?>(
                valueListenable: nameNotifier,
                builder: (context, value, child) => TextField(
                  style: const TextStyle(color: Colors.white),
                  focusNode: nameFocusNode,
                  controller: nameController,
                  decoration: loginInputDecorationTheme.copyWith(
                      prefixIcon: const Icon(Icons.person),
                      labelText: "Name",
                      hintText: "Enter name and lastname",
                      errorText: value),
                  onChanged: (value) {
                    commonValidate(nameController, nameNotifier);
                  },
                  textInputAction: TextInputAction.next,
                ),
              )),
          Padding(
              padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
              child: ValueListenableBuilder<String?>(
                valueListenable: companyNotifier,
                builder: (context, value, child) => TextField(
                  style: const TextStyle(color: Colors.white),
                  controller: companyController,
                  focusNode: companyFocusNode,
                  decoration: loginInputDecorationTheme.copyWith(
                      prefixIcon: const Icon(Icons.business),
                      labelText: "Company",
                      hintText: "Enter your company name",
                      errorText: value),
                  onChanged: (value) {
                    commonValidate(companyController, companyNotifier);
                  },
                  textInputAction: TextInputAction.next,
                ),
              )),
          Padding(
              padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
              child: ValueListenableBuilder<String?>(
                valueListenable: postNotifier,
                builder: (context, value, child) => TextField(
                  style: const TextStyle(color: Colors.white),
                  focusNode: postFocusNode,
                  controller: postController,
                  decoration: loginInputDecorationTheme.copyWith(
                      prefixIcon: const Icon(Icons.work),
                      labelText: "Post",
                      hintText: "Enter your post in company",
                      errorText: value),
                  onChanged: (value) {
                    commonValidate(postController, postNotifier);
                  },
                  textInputAction: TextInputAction.next,
                ),
              )),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
            child: ValueListenableBuilder<String?>(
              valueListenable: cityCountryNotifier,
              builder: (context, value, child) => TextField(
                style: const TextStyle(color: Colors.white),
                focusNode: cityCountryFocusNode,
                controller: cityCountryController,
                decoration: loginInputDecorationTheme.copyWith(
                    prefixIcon: const Icon(Icons.map),
                    labelText: "Country",
                    hintText: "Enter your country",
                    errorText: value),
                onChanged: (value) {
                  commonValidate(cityCountryController, cityCountryNotifier);
                },
                textInputAction: TextInputAction.next,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
            child: ValueListenableBuilder<String?>(
              valueListenable: cityCountryNotifier,
              builder: (context, value, child) => TextField(
                style: const TextStyle(color: Colors.white),
                focusNode: cityCountryFocusNode,
                controller: cityCountryController,
                decoration: loginInputDecorationTheme.copyWith(
                    prefixIcon: const Icon(Icons.map),
                    labelText: "City",
                    hintText: "Enter your city",
                    errorText: value),
                onChanged: (value) {
                  commonValidate(cityCountryController, cityCountryNotifier);
                },
                textInputAction: TextInputAction.next,
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
              child: ValueListenableBuilder<String?>(
                valueListenable: addressNotifier,
                builder: (context, value, child) => TextField(
                  style: const TextStyle(color: Colors.white),
                  focusNode: addressFocusNode,
                  controller: addressController,
                  decoration: loginInputDecorationTheme.copyWith(
                    prefixIcon: const Icon(Icons.maps_home_work),
                    labelText: "Address",
                    hintText: "Enter your address",
                    errorText: value,
                  ),
                  onChanged: (value) {
                    commonValidate(addressController, addressNotifier);
                  },
                  onSubmitted: (_) {
                    signUp(context);
                  },
                  textInputAction: TextInputAction.done,
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
          )
        ],
      ),
    );
  }
}
