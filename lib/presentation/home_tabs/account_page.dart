import 'package:flutter/material.dart';
import 'package:service_app/presentation/home_tabs/bottom_navigation_bar.dart';
import 'package:service_app/presentation/widgets/custom_button/custom_elevated_button.dart';
import 'package:service_app/presentation/widgets/list_tile/custom_group_tiles.dart';
import 'package:service_app/presentation/widgets/list_tile/custom_list_tile.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Account"),
      ),
      body: ListView(
        children: [
          CustomGroupTiles(setIconIndentDivider: true, children: [
            CustomListTile(
              height: 100,
              title: Text("Dvoynikov Vladimir Mikhailovich"),
              leadingIcon: Icons.account_circle,
              trailingInput: IconButton(
                icon: Icon(
                  Icons.edit,
                  color: Colors.white70,
                ),
                onPressed: () {},
              ),
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
                  child: const _SignOutPageButton(),
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
                title: Text("Developer"),
                leadingIcon: Icons.work,
                trailingInput: IconButton(
                  icon: Icon(
                    Icons.edit,
                    color: Colors.white70,
                  ),
                  onPressed: () {},
                ),
              ),
              CustomListTile(
                height: 70,
                title: Text("Saint-Petersburg, Russia"),
                leadingIcon: Icons.map,
                trailingInput: IconButton(
                  icon: Icon(
                    Icons.edit,
                    color: Colors.white70,
                  ),
                  onPressed: () {},
                ),
              ),
              CustomListTile(
                title: Text("1, Nevsky avenue"),
                height: 70,
                leadingIcon: Icons.maps_home_work,
                trailingInput: IconButton(
                  icon: Icon(
                    Icons.edit,
                    color: Colors.white70,
                  ),
                  onPressed: () {},
                ),
              ),
              CustomListTile(
                title: Text("FAKE COMPANY"),
                height: 70,
                leadingIcon: Icons.business,
                trailingInput: IconButton(
                  icon: Icon(
                    Icons.edit,
                    color: Colors.white70,
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
          CustomGroupTiles(
            title: "Settings",
            setIconIndentDivider: true,
            children: [
              CustomListTile(
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
              CustomListTile(
                height: 70,
                title: Text("wwwww@gmail.com"),
                leadingIcon: Icons.email,
                trailingInput: IconButton(
                  icon: Icon(
                    Icons.edit,
                    color: Colors.white70,
                  ),
                  onPressed: () {},
                ),
              ),
              CustomListTile(
                title: Text("+7(999)999-99-99"),
                height: 70,
                leadingIcon: Icons.phone,
                trailingInput: IconButton(
                  icon: Icon(
                    Icons.edit,
                    color: Colors.white70,
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
          CustomGroupTiles(children: [
            CustomListTile(
              height: 70,
              title: Text("One-time password"),
              leadingIcon: Icons.password,
              showArrow: true,
              onPressed: () {},
            ),
          ]),
          CustomGroupTiles(children: [
            CustomListTile(
              height: 70,
              leadingIconColor: Colors.red,
              title: Text("Delete account"),
              leadingIcon: Icons.delete,
              showArrow: true,
              onPressed: () {},
            ),
          ]),
        ],
      ),
      bottomNavigationBar: const ServiceAppBottomNavigationBar(),
    );
  }
}

class _SignOutPageButton extends StatelessWidget {
  const _SignOutPageButton();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CustomElevatedButton(
        onPressed: () {
          //  navigateTo(
          // context: context,
          // nextPage: const SelectMeasurementPage(),
          // );
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
