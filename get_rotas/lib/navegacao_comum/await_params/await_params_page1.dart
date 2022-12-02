import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AwaitParamsPage1 extends StatelessWidget {
  const AwaitParamsPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('params page 1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context)
                    .pop('retornando parâmetro pelo flutter nativo');
              },
              child: const Text('Retornando com param flutter nativo'),
            ),
            TextButton(
              onPressed: () {
                Get.back(result: 'Retornando pelo getX');
              },
              child: const Text('Retornando com param GetX'),
            ),
          ],
        ),
      ),
    );
  }
}
