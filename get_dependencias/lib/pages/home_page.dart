import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_dependencias/pages/binding/home_bindings.dart';

import 'binding/binding_controller.dart';
import 'initialBinding/initial_binding_page.dart';

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
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/basico');
              },
              child: const Text('Básico'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/metodos');
              },
              child: const Text('Métodos'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/HomeBindings');
              },
              child: const Text('Bindings'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/BindingsBuilder');
              },
              child: const Text('BindingsBuilder'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/BindingsBuilderPut');
              },
              child: const Text('BindingsBuilderPut'),
            ),
            TextButton(
              onPressed: () {
                Get.to(
                  const HomeBindings(),
                  binding: BindingsBuilder.put(() => BindingController(
                      nome: 'Inicializado pelo binding sem rota')),
                );
              },
              child: const Text('Bindings sem rota nomeada'),
            ),
            TextButton(
              onPressed: () {
                Get.to(const InitialBindingPage());
              },
              child: const Text('InitialBindingPage'),
            ),
          ],
        ),
      ),
    );
  }
}
