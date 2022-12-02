import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_rotas/navegacao_comum/off/off_page3.dart';

class OffPage2 extends StatefulWidget {
  const OffPage2({Key? key}) : super(key: key);

  @override
  State<OffPage2> createState() => _OffPage2State();
}

class _OffPage2State extends State<OffPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('off page 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) {
                    return const OffPage3();
                  },
                ));
              },
              child: const Text('Got to page3 com flutter nativo'),
            ),
            TextButton(
              onPressed: () {
                Get.off(const OffPage3());
              },
              child: const Text('Got to page3 com GetX'),
            ),
          ],
        ),
      ),
    );
  }
}
