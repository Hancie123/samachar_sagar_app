import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:samachar_sagar_app/model/NewsModel.dart';

class NewsDetailPage extends StatelessWidget {
  const NewsDetailPage({super.key, required this.data});
  final Datum? data;

  @override
  Widget build(BuildContext context) {
    var imagedata;


    if (data?.newsImage?.replaceAll("localhost", "10.0.2.2") == '' || data == null) {
      imagedata = 'https://img.freepik.com/free-vector/realistic-news-studio-background_23-2149985600.jpg?size=626&ext=jpg&ga=GA1.1.1546980028.1703289600&semt=ais';
    } else {
      imagedata = data!.newsImage!.replaceAll("localhost", "10.0.2.2");
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(data?.title ?? ""),
        backgroundColor: Colors.green,
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(children: [
          SizedBox(
            height: 200,
            width: double.infinity,
            child: ClipRRect(
                child: Image.network(
              imagedata!,
              height: 200,
              width:double.infinity,
              scale: 1.0,
              fit: BoxFit.cover,
            )),
          ),
          Expanded(child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SingleChildScrollView(child: Html(data:data?.description??"")),
          ))
        ]),
      ),
    );
  }
}
