import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PathParamPage extends StatelessWidget {
  const PathParamPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PathParamPage'),
      ),
      body: Text(Get.parameters['nome']!),
    );
  }
}
