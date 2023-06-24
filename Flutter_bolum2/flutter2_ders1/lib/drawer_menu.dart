import 'package:flutter/material.dart';

class DrawerMenu extends StatefulWidget {
  const DrawerMenu({super.key});

  @override
  State<DrawerMenu> createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 2,
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("Enes Baysal"),
            accountEmail: Text("enesbaysl@outlook.com"),
            currentAccountPicture: Image.network(
                "https://emrealtunbilek.com/wp-content/uploads/2016/10/apple-icon-72x72.png"),
            otherAccountsPictures: const [
              CircleAvatar(
                backgroundColor: Colors.purple,
                child: Text("AK"),
              ),
              CircleAvatar(
                backgroundColor: Colors.purple,
                child: Text("AR"),
              ),
            ],
          ),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Ana Sayfa"),
                  trailing: Icon(Icons.chevron_right),
                ),
                ListTile(
                  leading: Icon(Icons.call),
                  title: Text("Ara"),
                  trailing: Icon(Icons.chevron_right),
                ),
                ListTile(
                  leading: Icon(Icons.account_box),
                  title: Text("Profil"),
                  trailing: Icon(Icons.chevron_right),
                ),
                Divider(),
                InkWell(
                  onTap: () {},
                  splashColor: Colors.cyan,
                  child: ListTile(
                    leading: Icon(Icons.account_box),
                    title: Text("Profil"),
                    trailing: Icon(Icons.chevron_right),
                  ),
                ),
                const AboutListTile(
                  applicationName: "Flutter Dersleri",
                  applicationIcon: Icon(Icons.save),
                  applicationVersion: "2.0.1v",
                  child: Text("ABOUT US"),
                  applicationLegalese: null,
                  icon: Icon(Icons.keyboard),
                  aboutBoxChildren: [
                    Text("Child 1"),
                    Text("Child 2"),
                    Text("Child 3"),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
