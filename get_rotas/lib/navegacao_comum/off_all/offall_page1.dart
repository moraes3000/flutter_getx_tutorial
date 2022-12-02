import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'offall_page2.dart';

class OffallPage1 extends StatefulWidget {
  const OffallPage1({Key? key}) : super(key: key);

  @override
  State<OffallPage1> createState() => _OffallPage1State();
}

class _OffallPage1State extends State<OffallPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Off all page 1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return const OffallPage2();
                  },
                  settings: const RouteSettings(name: 'Page2'),
                ));
              },
              child: const Text('Got to page 2 com flutter nativo'),
            ),
            TextButton(
              onPressed: () {
                Get.to(const OffallPage2());
              },
              child: const Text('Got to page 2 com GetX'),
            ),
          ],
        ),
      ),
    );
  }
}
