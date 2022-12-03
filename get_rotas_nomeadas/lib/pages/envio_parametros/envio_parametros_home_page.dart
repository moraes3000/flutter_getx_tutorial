import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EnvioParametrosHomePage extends StatelessWidget {
  const EnvioParametrosHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Parâmetros Rota'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                Get.toNamed(
                  '/envio_parametros_home_page/arguments',
                  // arguments: 'Parâmetro enviado por arguments',
                  arguments: {
                    'curso': 'Aprendendo GetX',
                    'name': "Bruno",
                  },
                );
              },
              child: const Text('arguments')),
          ElevatedButton(
              onPressed: () {
                final param = Uri.encodeFull('Bruno Moraes');
                Get.toNamed(
                    '/envio_parametros_home_page/pathParam/$param/jornadaGetX');
              },
              child: const Text('Path param')),
          ElevatedButton(
              onPressed: () {
                Get.toNamed(
                    '/envio_parametros_home_page/queryParam?nome=Bruno Moraes&id=1');
              },
              child: const Text('Query param')),
          ElevatedButton(
              onPressed: () {
                Get.toNamed(
                  '/envio_parametros_home_page/queryParam',
                  parameters: {
                    'nome': 'Bruno Barbeiro Moraes',
                    'id': '40',
                  },
                );
              },
              child: const Text('Query param (parametros)')),
        ],
      )),
    );
  }
}
