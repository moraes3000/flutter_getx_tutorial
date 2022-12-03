import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ArgumentsParamPage extends StatelessWidget {
  const ArgumentsParamPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map<String, String> arguments = Get.arguments;
    return Scaffold(
      appBar: AppBar(
        title: const Text('ArgumentsParamPage'),
      ),
      // body: Center(child: Text(Get.arguments)),
      body: Center(
          child: Column(
        children: [
          Text(arguments['name'] ?? 'nome nao encontrado'),
          Text(arguments['curso'] ?? 'nome nao encontrado'),
        ],
      )),
    );
  }
}
