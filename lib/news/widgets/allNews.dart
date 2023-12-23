import 'package:flutter/material.dart';

import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/route_manager.dart';
import 'package:samachar_sagar_app/controllers/newsController.dart';
import 'package:samachar_sagar_app/news/newsDetailPage.dart';

class AllNews extends StatelessWidget {
  const AllNews({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NewsControlller>(
        init: NewsControlller(),
        builder: (value) {
          return Expanded(
            child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  var newsData = value.news?.data?[index];
                  String imagedata;
                  String newsTilte = newsData?.title??"Title";
                  String created_at = newsData?.createdAt ?? "Title";

                  if (newsData?.newsImage?.replaceAll("localhost", "10.0.2.2") == '' || newsData == null) {
                    imagedata = 'https://7knetwork.com/wp-content/uploads/2023/08/7k-page-3-2.png';
                  } else {
                    imagedata = newsData.newsImage!.replaceAll("localhost", "10.0.2.2");
                  }
                  return Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: InkWell(
                      onTap: () {
                        Get.to(() => NewsDetailPage(data: newsData));
                      },
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListTile(
                            leading: SizedBox(
                              height: 100,
                              width: 100,
                              child: Image.network(
                                imagedata,
                                scale: 1.0,
                                height: 200,
                                width: 300,
                                fit: BoxFit.cover,
                              ),
                            ),
                            title:  Text(newsTilte),
                            trailing:  Text("Upload At  \n" + created_at),
                          ),
                        ),
                      ),
                    ),
                  );
                }),
          );
        });
  }
}
