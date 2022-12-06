import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'basico_controller.dart';

class BasicoHomePage extends StatelessWidget {
  BasicoHomePage({Key? key}) : super(key: key);

  final controller = Get.put(BasicoController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Básico Home Page'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedBuilder(
            animation: controller,
            builder: ((context, child) {
              return Text(
                controller.nome,
                style: Theme.of(context).textTheme.titleLarge,
              );
            }),
          ),
          ElevatedButton(
            onPressed: () => controller.alterarNome('Bruno Moraes'),
            child: const Text('Alterar nome'),
          ),
          WidgetInterno(),
        ],
      )),
    );
  }
}

class WidgetInterno extends StatelessWidget {
  const WidgetInterno({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Widget interno'),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: () =>
              Get.find<BasicoController>().alterarNome('Bruno Moraes'),
          child: const Text('Alterar nome'),
        ),
      ],
    );
  }
}
