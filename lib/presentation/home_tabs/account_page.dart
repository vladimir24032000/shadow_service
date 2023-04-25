import 'package:firebase_phone_auth_handler/firebase_phone_auth_handler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:service_app/bloc/firebase/firebase_db_cubit.dart';
import 'package:service_app/core/firebase/firebase_repo.dart';
import 'package:service_app/core/navigator.dart';
import 'package:service_app/presentation/home_tabs/bottom_navigation_bar.dart';
import 'package:service_app/presentation/lock_screen/lock_screen_cubit/lock_screen_cubit.dart';
import 'package:service_app/presentation/lock_screen/splash_screen.dart';
import 'package:service_app/presentation/widgets/custom_button/custom_elevated_button.dart';
import 'package:service_app/presentation/widgets/dialogs/delete_account_dialog.dart';
import 'package:service_app/presentation/widgets/list_tile/custom_group_tiles.dart';
import 'package:service_app/presentation/widgets/list_tile/custom_list_tile.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  late FirebaseDbCubit _firebaseDbCubit;
  @override
  void initState() {
    super.initState();
    _firebaseDbCubit = context.read<FirebaseDbCubit>();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Account"),
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        children: [
          CustomGroupTiles(setIconIndentDivider: true, children: [
            CustomListTile(
              height: 100,
              title: _firebaseDbCubit.user != null
                  ? Text(_firebaseDbCubit.user!.name)
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
                    firebaseDbCubit: _firebaseDbCubit,
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
                title: _firebaseDbCubit.user != null
                    ? Text(_firebaseDbCubit.user!.post)
                    : const Text(""),
                leadingIcon: Icons.work,
                // trailingInput: IconButton(
                //   icon: Icon(
                //     Icons.edit,
                //     color: Colors.white70,
                //   ),
                //   onPressed: () {},
                // ),
              ),
              CustomListTile(
                height: 70,
                title: _firebaseDbCubit.user != null
                    ? Text(_firebaseDbCubit.user!.cityCountry)
                    : const Text(""),
                leadingIcon: Icons.map,
                // trailingInput: IconButton(
                //   icon: Icon(
                //     Icons.edit,
                //     color: Colors.white70,
                //   ),
                //   onPressed: () {},
                // ),
              ),
              CustomListTile(
                title: _firebaseDbCubit.user != null
                    ? Text(_firebaseDbCubit.user!.address)
                    : const Text(""),
                height: 70,
                leadingIcon: Icons.maps_home_work,
                // trailingInput: IconButton(
                //   icon: Icon(
                //     Icons.edit,
                //     color: Colors.white70,
                //   ),
                //   onPressed: () {},
                // ),
              ),
              CustomListTile(
                title: _firebaseDbCubit.user != null
                    ? Text(_firebaseDbCubit.user!.company)
                    : const Text(""),
                height: 70,
                leadingIcon: Icons.business,
                // trailingInput: IconButton(
                //   icon: Icon(
                //     Icons.edit,
                //     color: Colors.white70,
                //   ),
                //   onPressed: () {},
                // ),
              ),
            ],
          ),
          CustomGroupTiles(
            title: "Settings",
            setIconIndentDivider: true,
            children: [
              Visibility(
                visible: FirebaseRepo.firebaseUser != null &&
                    FirebaseRepo.firebaseUser!.email != null,
                child: CustomListTile(
                  height: 70,
                  title: Text("Change password"),
                  leadingIcon: Icons.security,
                  trailingInput: IconButton(
                    icon: Icon(
                      Icons.edit,
                      color: Colors.white70,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              Visibility(
                visible: FirebaseRepo.firebaseUser != null &&
                    FirebaseRepo.firebaseUser!.email != null,
                child: CustomListTile(
                  height: 70,
                  title: FirebaseRepo.firebaseUser != null &&
                          FirebaseRepo.firebaseUser!.email != null
                      ? Text(FirebaseRepo.firebaseUser!.email!)
                      : const Text(""),
                  leadingIcon: Icons.email,
                ),
              ),
              Visibility(
                visible: FirebaseRepo.firebaseUser != null &&
                    FirebaseRepo.firebaseUser!.phoneNumber != null,
                child: CustomListTile(
                  title: FirebaseRepo.firebaseUser != null &&
                          FirebaseRepo.firebaseUser!.phoneNumber != null
                      ? Text(FirebaseRepo.firebaseUser!.phoneNumber!)
                      : const Text(""),
                  height: 70,
                  leadingIcon: Icons.phone,
                ),
              )
            ],
          ),
          // CustomGroupTiles(children: [
          //   CustomListTile(
          //     height: 70,
          //     title: Text("One-time password"),
          //     leadingIcon: Icons.password,
          //     showArrow: true,
          //     onPressed: () {},
          //   ),
          // ]),
          CustomGroupTiles(children: [
            CustomListTile(
              height: 70,
              leadingIconColor: Colors.red,
              title: Text("Delete account"),
              leadingIcon: Icons.delete,
              showArrow: true,
              onPressed: () async {
                final result = await showDeleteAccountDialog(context);
                if (result == 0) {
                  await _firebaseDbCubit.deleteUser();
                  final lockScreenCubit = LockScreenCubit();
                  lockScreenCubit.cleanPin();
                  await FirebaseRepo.auth.signOut();
                  if (mounted) {
                    navigateTo(
                      newRoot: true,
                      context: context,
                      nextPage: const SplashScreen(),
                    );
                  }
                }
              },
            ),
          ]),
        ],
      ),
      bottomNavigationBar: const ServiceAppBottomNavigationBar(),
    );
  }
}

class _SignOutPageButton extends StatelessWidget {
  const _SignOutPageButton({required this.firebaseDbCubit});
  final FirebaseDbCubit firebaseDbCubit;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CustomElevatedButton(
        onPressed: () async {
          firebaseDbCubit.logOut();
          final lockScreenCubit = LockScreenCubit();
          lockScreenCubit.cleanPin();
          navigateTo(
            newRoot: true,
            context: context,
            nextPage: const SplashScreen(),
          );
          await FirebaseRepo.auth.signOut();
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
