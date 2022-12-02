import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'back_page1.dart';

class BackHomePage extends StatefulWidget {
  const BackHomePage({Key? key}) : super(key: key);

  @override
  State<BackHomePage> createState() => _BackHomePageState();
}

class _BackHomePageState extends State<BackHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Back Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return const BackPage1();
                  },
                ));
              },
              child: const Text('Got to page com flutter nativo'),
            ),
            TextButton(
              onPressed: () {
                Get.to(const BackPage1());
              },
              child: const Text('Got to page com GetX'),
            ),
          ],
        ),
      ),
    );
  }
}
