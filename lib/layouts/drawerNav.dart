import 'package:flutter/material.dart';

class DrawerNav extends StatelessWidget {
  const DrawerNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text("Hancie Phago"),
            accountEmail: const Text("hanciephago@gmail.com"),
            currentAccountPicture: CircleAvatar(
                child: ClipOval(
              child: Image.asset('assets/img/logo.png'),
            )),
            decoration: const BoxDecoration(color: Colors.blueAccent),
          ),
          const ListTile(
            leading: Icon(Icons.person),
            title: Text("Profile"),
          ),
          const ListTile(
            leading: Icon(Icons.logout),
            title: Text("Logout"),
            // onTap: () => Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => LoginView()), (route) => false),
          )
        ],
      ),
    );
  }
}
