import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_iniciando/pages/page_1.dart';
import 'package:get_iniciando/pages/page_2.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Get.to(Page1());
            },
            child: const Text('Page 1'),
          ),
          ElevatedButton(
            onPressed: () {
              Get.to(Page2());
            },
            child: const Text('Page 2'),
          ),
        ],
      )),
    );
  }
}
