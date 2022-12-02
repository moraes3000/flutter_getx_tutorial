import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_rotas/navegacao_comum/off/off_page1.dart';

class OffHomePage extends StatefulWidget {
  const OffHomePage({Key? key}) : super(key: key);

  @override
  State<OffHomePage> createState() => _OffHomePageState();
}

class _OffHomePageState extends State<OffHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OFF'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return const OffPage1();
                  },
                ));
              },
              child: const Text('Got to page com flutter nativo'),
            ),
            TextButton(
              onPressed: () {
                Get.to(const OffPage1());
              },
              child: const Text('Got to page com GetX'),
            ),
          ],
        ),
      ),
    );
  }
}
