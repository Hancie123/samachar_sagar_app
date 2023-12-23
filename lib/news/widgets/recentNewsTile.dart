import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class RecentNewsTile extends StatelessWidget {
  const RecentNewsTile({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: double.infinity,
      child: ListView.builder(
          itemCount: 5,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return SizedBox(
              height: 200,
              width: 300,
              child: Card(
                child: Stack(
                  children: [
                    Image.network(
                      "https://7knetwork.com/wp-content/uploads/2023/08/7k-page-3-2.png",
                      scale: 1.0,
                      height: 200,
                      width: 300,
                      fit: BoxFit.cover,
                    ),
                    const Align(alignment: Alignment.bottomCenter, child: Text("data"))
                  ],
                ),
              ),
            );
          }),
    );
  }
}
