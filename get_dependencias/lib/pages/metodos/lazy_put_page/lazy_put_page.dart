import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_dependencias/pages/metodos/lazy_put_page/lazy_put_controller.dart';

import 'lazy_put_fenix_controller.dart';

class LazyPutPage extends StatefulWidget {
  LazyPutPage({Key? key}) : super(key: key) {
    Get.lazyPut(() => LazyPutController());
    // mata a instancia, porém mantém a factory ativa dentro do get fazendo com que
    // tenha a possibilidade de acessar de qualquer lugar para sempre dentro do get
    Get.lazyPut(() => LazyPutFenixController(), fenix: true);
    // mantém a instancia dentro do get, sendo assim quando vc pedir a classe
    // ele retorna a mesma intancia anterior
    // Get.lazyPut(() => LazyPutFenixController(), permanent:true);
  }

  @override
  State<LazyPutPage> createState() => _LazyPutPageState();
}

class _LazyPutPageState extends State<LazyPutPage> {
  String nome = '';
  String nomeFenix = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lazy put Page'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('nome: $nome'),
          Text('nomeFenix: $nomeFenix'),
          ElevatedButton(
            onPressed: () {
              final controller = Get.find<LazyPutController>();
              setState(() {
                nome = controller.nome;
              });
            },
            child: const Text('Buscar nome'),
          ),
          ElevatedButton(
            onPressed: () {
              final controller = Get.find<LazyPutController>();
              controller.nome = 'Jornada GetX';
              setState(() {
                nome = controller.nome;
              });
            },
            child: const Text('Mudar nome'),
          ),
          ElevatedButton(
            onPressed: () {
              final controller = Get.find<LazyPutFenixController>();
              setState(() {
                nomeFenix = controller.nome;
              });
            },
            child: const Text('Buscar nome fenix'),
          ),
          ElevatedButton(
            onPressed: () {
              final controller = Get.find<LazyPutFenixController>();
              controller.nome = 'Jornada GetX Fenix';
              setState(() {
                nomeFenix = controller.nome;
              });
            },
            child: const Text('Buscar nome fenix'),
          ),
        ],
      )),
    );
  }
}
