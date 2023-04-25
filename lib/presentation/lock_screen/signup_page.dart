import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:service_app/bloc/firebase/firebase_db_cubit.dart';
import 'package:service_app/core/firebase/model/user.dart';
import 'package:service_app/core/navigator.dart';
import 'package:service_app/presentation/home_tabs/home_tabs.dart';
import 'package:service_app/presentation/lock_screen/lock_screen_page.dart';
import 'package:service_app/presentation/theme/theme.dart';
import 'package:service_app/presentation/widgets/custom_button/custom_elevated_button.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<StatefulWidget> createState() => SignUpPageState();
}

class SignUpPageState extends State<SignUpPage> {
  late FirebaseDbCubit _firebaseDbCubit;
  late StreamSubscription<FirebaseDBState> _subscription;

  final TextEditingController nameController = TextEditingController();
  final TextEditingController postController = TextEditingController();
  final TextEditingController cityCountryController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController companyController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _firebaseDbCubit = context.read<FirebaseDbCubit>();
    _subscription = _firebaseDbCubit.stream.listen((event) {
      event.mapOrNull(
        userExists: (_) => navigateTo(
          context: context,
          nextPage: const LockScreenPage(),
          newRoot: true,
        ),
      );
    });
    _firebaseDbCubit.getUserIfExists();
  }

  @override
  void dispose() {
    super.dispose();
    _subscription.cancel();
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
                        cityCountryController: cityCountryController,
                        companyController: companyController,
                        nameController: nameController,
                        postController: postController,
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
  final TextEditingController nameController;
  final TextEditingController postController;
  final TextEditingController cityCountryController;
  final TextEditingController addressController;
  final TextEditingController companyController;

  final FocusNode nameFocusNode = FocusNode();
  final FocusNode postFocusNode = FocusNode();
  final FocusNode cityCountryFocusNode = FocusNode();
  final FocusNode addressFocusNode = FocusNode();
  final FocusNode companyFocusNode = FocusNode();

  final ValueNotifier<String?> nameNotifier = ValueNotifier<String?>(null);
  final ValueNotifier<String?> postNotifier = ValueNotifier<String?>(null);
  final ValueNotifier<String?> cityCountryNotifier =
      ValueNotifier<String?>(null);
  final ValueNotifier<String?> addressNotifier = ValueNotifier<String?>(null);
  final ValueNotifier<String?> companyNotifier = ValueNotifier<String?>(null);

  _SignUpWidget(
      {required this.nameController,
      required this.postController,
      required this.cityCountryController,
      required this.addressController,
      required this.companyController});

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
    if (!commonValidate(nameController, nameNotifier)) {
      nameFocusNode.requestFocus();
      return;
    }
    if (!commonValidate(companyController, companyNotifier)) {
      companyFocusNode.requestFocus();
      return;
    }
    if (!commonValidate(postController, postNotifier)) {
      postFocusNode.requestFocus();
      return;
    }
    if (!commonValidate(cityCountryController, cityCountryNotifier)) {
      cityCountryFocusNode.requestFocus();
      return;
    }
    if (!commonValidate(addressController, addressNotifier)) {
      addressFocusNode.requestFocus();
      return;
    }
    context.read<FirebaseDbCubit>().createUser(
          ShadowUser(
            name: nameController.text,
            post: postController.text,
            cityCountry: cityCountryController.text,
            address: addressController.text,
            company: companyController.text,
            enabled: false,
          ),
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
                  style: const TextStyle(color: Colors.black),
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
                  style: const TextStyle(color: Colors.black),
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
                  style: const TextStyle(color: Colors.black),
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
                  style: const TextStyle(color: Colors.black),
                  focusNode: cityCountryFocusNode,
                  controller: cityCountryController,
                  decoration: loginInputDecorationTheme.copyWith(
                      prefixIcon: const Icon(Icons.map),
                      labelText: "City, country",
                      hintText: "Enter your location",
                      errorText: value),
                  onChanged: (value) {
                    commonValidate(cityCountryController, cityCountryNotifier);
                  },
                  textInputAction: TextInputAction.next,
                ),
              )),
          Padding(
              padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
              child: ValueListenableBuilder<String?>(
                valueListenable: addressNotifier,
                builder: (context, value, child) => TextField(
                  style: const TextStyle(color: Colors.black),
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
