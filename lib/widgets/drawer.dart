import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";

class MyDrawer extends StatelessWidget {
  final imageUrl =
      "https://media.licdn.com/dms/image/D4D03AQE6EJc4LWdfXA/profile-displayphoto-shrink_800_800/0/1676200764184?e=1710374400&v=beta&t=7-Mlt9AeT-rSqV4Zze_cQACjd0zzCwkjC6_T0mBDyrk";

  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(padding: EdgeInsets.zero, children: [
          DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Virat Gupta"),
                accountEmail: Text("virat@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
              )),
          ListTile(
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.white,
            ),
            title: Text(
              "Home",
              textScaleFactor: 1.2,
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.profile_circled,
              color: Colors.white,
            ),
            title: Text(
              "Profile",
              textScaleFactor: 1.2,
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.mail,
              color: Colors.white,
            ),
            title: Text(
              "Email Me",
              textScaleFactor: 1.2,
              style: TextStyle(color: Colors.white),
            ),
          )
        ]),
      ),
    );
  }
}
