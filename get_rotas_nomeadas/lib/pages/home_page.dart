import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Get.toNamed("/inicial/page1");
            },
            child: const Text('Inicial'),
          ),
          ElevatedButton(
            onPressed: () {
              Get.toNamed("/pagina_que_n_existe");
            },
            child: const Text('Página que não existe'),
          ),
        ],
      )),
    );
  }
}
