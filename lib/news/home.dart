import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/instance_manager.dart';
import 'package:samachar_sagar_app/controllers/newsController.dart';
import 'package:samachar_sagar_app/layouts/drawerNav.dart';
import 'package:samachar_sagar_app/news/widgets/allNews.dart';
import 'package:samachar_sagar_app/news/widgets/recentNewsTile.dart';


class HomeClass extends StatelessWidget {
  const HomeClass({super.key});

  @override
  Widget build(BuildContext context) {
  
    NewsControlller controlller = Get.put(NewsControlller());
    controlller.sendNewsRequest();

    return Scaffold(
      drawer: const DrawerNav(),
      floatingActionButton: FloatingActionButton(child: const Text("Exit"),
        onPressed: () {
          SystemNavigator.pop();
        },
      ),
      appBar: AppBar(backgroundColor: Colors.green, title: const Text("Samachar Sagar")),
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
            RecentNewsTile(),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "All News",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            AllNews(),
          ],
        ),
      ),
    );
  }
}
