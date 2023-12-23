import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Samachar Sanchar"),
        backgroundColor: Colors.green,
      ),
      body: Column(children: [
        Center(
          child: Image.asset(
            'assets/img/logo.png',
            height: 200,
            width: 200,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: const Text(
              "Discover the latest stories and stay connected to the pulse of Nepal with Samchar Sanchar, a bespoke news viewing app meticulously crafted by Suraj Yadav. Built using cutting-edge technologies, this app seamlessly integrates Flutter for the frontend and Laravel API for the backend, offering a unique and tailored news experience for the Nepali community.",style: TextStyle(fontSize: 16),),
        )
      ]),
    );
  }
}
