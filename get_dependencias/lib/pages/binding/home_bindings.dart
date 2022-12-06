import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_dependencias/pages/binding/binding_controller.dart';

class HomeBindings extends StatelessWidget {
  const HomeBindings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bindings'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(Get.find<BindingController>().nome),
        ],
      )),
    );
  }
}
