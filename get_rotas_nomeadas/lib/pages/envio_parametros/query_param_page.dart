import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QueryParamPage extends StatelessWidget {
  const QueryParamPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QueryParamPage'),
      ),
      body: Center(
        child: Column(children: [
          Text(Get.parameters['nome'] ?? ''),
          Text(Get.parameters['id'] ?? ''),
        ]),
      ),
    );
  }
}
