import 'package:flutter/material.dart';

import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/route_manager.dart';
import 'package:samachar_sagar_app/controllers/newsController.dart';
import 'package:samachar_sagar_app/news/newsDetailPage.dart';

class RecentNewsTile extends StatelessWidget {
  const RecentNewsTile({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NewsControlller>(
        init: NewsControlller(),
        builder: (value) {
          return SizedBox(
            height: 200,
            width: double.infinity,
            child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  var newsData = value.news?.data?[index];
                  String imagedata;
                  String newsTilte = newsData?.title ?? "Title";

                  if (newsData?.newsImage?.replaceAll("localhost", "10.0.2.2") == '' || newsData == null) {
                    imagedata = 'https://img.freepik.com/free-vector/realistic-news-studio-background_23-2149985600.jpg?size=626&ext=jpg&ga=GA1.1.1546980028.1703289600&semt=ais';
                  } else {
                    imagedata = newsData.newsImage!.replaceAll("localhost", "10.0.2.2");
                  }
                  return GestureDetector(
                    onTap: () {
                      Get.to(() => NewsDetailPage(data: newsData));
                    },
                    child: Card(
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.network(
                              imagedata,
                              scale: 1.0,
                              height: 200,
                              width: 300,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  (newsTilte.characters.length <= 25) ? newsTilte : '${newsTilte.substring(0, 29)}...',
                                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
                                ),
                              ))
                        ],
                      ),
                    ),
                  );
                }),
          );
        });
  }
}
