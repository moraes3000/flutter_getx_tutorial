import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BackPage1 extends StatefulWidget {
  const BackPage1({Key? key}) : super(key: key);

  @override
  State<BackPage1> createState() => _BackPage1State();
}

class _BackPage1State extends State<BackPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Back page 1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Voltar com flutter nativo'),
            ),
            TextButton(
              onPressed: () {
                Get.back();
              },
              child: const Text('Voltar com GetX'),
            ),
          ],
        ),
      ),
    );
  }
}
