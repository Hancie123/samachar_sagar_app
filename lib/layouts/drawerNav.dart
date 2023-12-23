import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/route_manager.dart';
import 'package:samachar_sagar_app/news/about.dart';

class DrawerNav extends StatelessWidget {
  const DrawerNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container(
            color: Colors.green,
            height: 200,
            child: Column(children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.asset(
                    'assets/img/logo.png',
                    height: 200,
                    width: 200,
                  )),
            ]),
          ),
           ListTile(
            leading: Icon(Icons.person),
            title: Text("About"),
            onTap: () {
              Get.to(() => AboutPage());
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text("Exit"),
            onTap: () {
              SystemNavigator.pop();
            },
          )
        ],
      ),
    );
  }
}
