import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:service_app/bloc/api/api_cubit.dart';
import 'package:service_app/bloc/api/api_state.dart';
import 'package:service_app/bloc/firebase/firebase_db_cubit.dart';
import 'package:service_app/core/firebase/firebase_repo.dart';
import 'package:service_app/core/firebase/model/user.dart';
import 'package:service_app/core/navigator.dart';
import 'package:service_app/presentation/home_tabs/bottom_navigation_bar.dart';
import 'package:service_app/presentation/home_tabs/change_password_page.dart';
import 'package:service_app/presentation/lock_screen/lock_screen_cubit/lock_screen_cubit.dart';
import 'package:service_app/presentation/lock_screen/splash_screen.dart';
import 'package:service_app/presentation/widgets/custom_button/custom_elevated_button.dart';
import 'package:service_app/presentation/widgets/dialogs/delete_account_dialog.dart';
import 'package:service_app/presentation/widgets/dialogs/edit_text_dialog.dart';
import 'package:service_app/presentation/widgets/list_tile/custom_group_tiles.dart';
import 'package:service_app/presentation/widgets/list_tile/custom_list_tile.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  late ApiCubit _apiCubit;
  final TextEditingController _workEditController = TextEditingController();
  final TextEditingController _cityCountryEditController =
      TextEditingController();
  final TextEditingController _addressEditController = TextEditingController();
  final TextEditingController _companyEditController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _apiCubit = context.read<ApiCubit>();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Account"),
        automaticallyImplyLeading: false,
      ),
      body: BlocBuilder<ApiCubit, ApiState>(
        bloc: _apiCubit,
        builder: (context, state) => Stack(
          children: [
            ListView(
              children: [
                CustomGroupTiles(setIconIndentDivider: true, children: [
                  CustomListTile(
                    height: 100,
                    title: _apiCubit.user != null
                        ? Text(
                            "${_apiCubit.user!.first_name!} ${_apiCubit.user!.last_name!} ${_apiCubit.user!.patronymic ?? ""}")
                        : const Text(""),
                    leadingIcon: Icons.account_circle,
                    // trailingInput: IconButton(
                    //   icon: Icon(
                    //     Icons.edit,
                    //     color: Colors.white70,
                    //   ),
                    //   onPressed: () {},
                    // ),
                  ),
                ]),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: ConstrainedBox(
                        constraints:
                            const BoxConstraints(maxWidth: 320, minWidth: 250),
                        child: _SignOutPageButton(
                          apiCubit: _apiCubit,
                        ),
                      ),
                    ),
                  ),
                ),
                CustomGroupTiles(
                  title: "Personal information",
                  setIconIndentDivider: true,
                  children: [
                    CustomListTile(
                      height: 70,
                      title: _apiCubit.user != null
                          ? Text(_apiCubit.user!.job_title!)
                          : const Text(""),
                      leadingIcon: Icons.work,
                      trailingInput: IconButton(
                        icon: Icon(
                          Icons.edit,
                          color: theme.colorScheme.onPrimary,
                        ),
                        onPressed: () async {
                          final result = await showEditDialog(
                              context, "Job title", _apiCubit.user!.job_title!);
                          if (result != null) {
                            final updatedUser =
                                _apiCubit.user!.copyWith(job_title: result);

                            await _apiCubit.updateUser(updatedUser);

                            // setState(() {});
                          }
                        },
                      ),
                    ),
                    CustomListTile(
                      height: 70,
                      title: _apiCubit.user != null
                          ? Text(_apiCubit.user!.country!)
                          : const Text(""),
                      leadingIcon: Icons.map,
                      trailingInput: IconButton(
                        icon: Icon(
                          Icons.edit,
                          color: theme.colorScheme.onPrimary,
                        ),
                        onPressed: () async {
                          final result = await showEditDialog(
                              context, "Country", _apiCubit.user!.country!);
                          if (result != null) {
                            final updatedUser =
                                _apiCubit.user!.copyWith(country: result);

                            await _apiCubit.updateUser(updatedUser);
                          }
                        },
                      ),
                    ),
                    CustomListTile(
                      height: 70,
                      title: _apiCubit.user != null
                          ? Text(_apiCubit.user!.city!)
                          : const Text(""),
                      leadingIcon: Icons.map,
                      trailingInput: IconButton(
                        icon: Icon(
                          Icons.edit,
                          color: theme.colorScheme.onPrimary,
                        ),
                        onPressed: () async {
                          final result = await showEditDialog(
                              context, "City", _apiCubit.user!.city!);
                          if (result != null) {
                            final updatedUser =
                                _apiCubit.user!.copyWith(city: result);

                            await _apiCubit.updateUser(updatedUser);
                          }
                        },
                      ),
                    ),
                    CustomListTile(
                      title: _apiCubit.user != null
                          ? Text(_apiCubit.user!.installation_center_address!)
                          : const Text(""),
                      height: 70,
                      leadingIcon: Icons.maps_home_work,
                      trailingInput: IconButton(
                        icon: Icon(
                          Icons.edit,
                          color: theme.colorScheme.onPrimary,
                        ),
                        onPressed: () async {
                          final result = await showEditDialog(
                              context,
                              "Address",
                              _apiCubit.user!.installation_center_address!);
                          if (result != null) {
                            final updatedUser = _apiCubit.user!
                                .copyWith(installation_center_address: result);

                            await _apiCubit.updateUser(updatedUser);
                          }
                        },
                      ),
                    ),
                    CustomListTile(
                      title: _apiCubit.user != null
                          ? Text(_apiCubit.user!.organization!)
                          : const Text(""),
                      height: 70,
                      leadingIcon: Icons.business,
                      trailingInput: IconButton(
                        icon: Icon(
                          Icons.edit,
                          color: theme.colorScheme.onPrimary,
                        ),
                        onPressed: () async {
                          final result = await showEditDialog(context,
                              "Organization", _apiCubit.user!.organization!);
                          if (result != null) {
                            final updatedUser =
                                _apiCubit.user!.copyWith(organization: result);

                            await _apiCubit.updateUser(updatedUser);
                          }
                        },
                      ),
                    ),
                  ],
                ),
                // CustomGroupTiles(
                //   title: "Settings",
                //   setIconIndentDivider: true,
                //   children: [
                //     Visibility(
                //       visible: FirebaseRepo.firebaseUser != null &&
                //           FirebaseRepo.firebaseUser!.email != null,
                //       child: CustomListTile(
                //         height: 70,
                //         title: Text("Change password"),
                //         leadingIcon: Icons.security,
                //         trailingInput: IconButton(
                //           icon: Icon(
                //             Icons.edit,
                //             color: theme.colorScheme.onPrimary,
                //           ),
                //           onPressed: () {
                //             navigateTo(
                //                 context: context,
                //                 nextPage: const ChangePasswordPage());
                //           },
                //         ),
                //       ),
                //     ),
                //     Visibility(
                //       visible: FirebaseRepo.firebaseUser != null &&
                //           FirebaseRepo.firebaseUser!.email != null,
                //       child: CustomListTile(
                //         height: 70,
                //         title: FirebaseRepo.firebaseUser != null &&
                //                 FirebaseRepo.firebaseUser!.email != null
                //             ? Text(FirebaseRepo.firebaseUser!.email!)
                //             : const Text(""),
                //         leadingIcon: Icons.email,
                //       ),
                //     ),
                //     Visibility(
                //       visible: FirebaseRepo.firebaseUser != null &&
                //           FirebaseRepo.firebaseUser!.phoneNumber != null,
                //       child: CustomListTile(
                //         title: FirebaseRepo.firebaseUser != null &&
                //                 FirebaseRepo.firebaseUser!.phoneNumber != null
                //             ? Text(FirebaseRepo.firebaseUser!.phoneNumber!)
                //             : const Text(""),
                //         height: 70,
                //         leadingIcon: Icons.phone,
                //       ),
                //     )
                //   ],
                // ),
                // CustomGroupTiles(children: [
                //   CustomListTile(
                //     height: 70,
                //     title: Text("One-time password"),
                //     leadingIcon: Icons.password,
                //     showArrow: true,
                //     onPressed: () {},
                //   ),
                // ]),
                // CustomGroupTiles(
                //   children: [
                // TextButton(
                //     onPressed: () async {
                //       final result = await showDeleteAccountDialog(context);
                //       if (result == 0) {
                //         await _firebaseDbCubit.deleteUser();
                //         final lockScreenCubit = LockScreenCubit();
                //         await lockScreenCubit.cleanPin();
                //         await FirebaseRepo.auth.signOut();
                //         if (mounted) {
                //           navigateTo(
                //             newRoot: true,
                //             context: context,
                //             nextPage: const SplashScreen(),
                //           );
                //         }
                //       }
                //     },
                //     child: Text(
                //       "Delete account",
                //       style: TextStyle(color: Colors.red),
                //     ))
              ],
            ),
            if (state is InProgressApiState)
              Container(
                color: const Color.fromARGB(80, 0, 0, 0),
                child: const Center(
                  child: CircularProgressIndicator.adaptive(),
                ),
              )
          ],
        ),
      ),
      bottomNavigationBar: const ServiceAppBottomNavigationBar(),
    );
  }
}

class _SignOutPageButton extends StatelessWidget {
  const _SignOutPageButton({required this.apiCubit});
  final ApiCubit apiCubit;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CustomElevatedButton(
        onPressed: () async {
          apiCubit.logOut();
          final lockScreenCubit = LockScreenCubit();
          await lockScreenCubit.cleanPin();

          if (context.mounted) {
            navigateTo(
              newRoot: true,
              context: context,
              nextPage: const SplashScreen(),
            );
          }
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            Theme.of(context).colorScheme.primary,
          ),
        ),
        child: const Text("SIGN OUT"),
      ),
    );
  }
}
