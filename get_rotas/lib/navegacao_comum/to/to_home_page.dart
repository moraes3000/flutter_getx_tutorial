import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_rotas/navegacao_comum/to/page1.dart';

class ToHomePage extends StatelessWidget {
  const ToHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('To Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return const Page1();
                  },
                ));
              },
              child: const Text('Got to page com flutter nativo'),
            ),
            TextButton(
              onPressed: () {
                Get.to(const Page1());
              },
              child: const Text('Got to page com GetX'),
            ),
          ],
        ),
      ),
    );
  }
}
