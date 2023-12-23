import 'package:flutter/material.dart';
import 'package:samachar_sagar_app/layouts/drawerNav.dart';
import 'package:samachar_sagar_app/news/widgets/recentNewsTile.dart';

class HomeClass extends StatelessWidget {
  const HomeClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerNav(),
      appBar: AppBar(backgroundColor: Colors.green, title: const Text("Samachar Sanchar")),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Recently Added News",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            RecentNewsTile()
          ],
        ),
      ),
    );
  }
}
