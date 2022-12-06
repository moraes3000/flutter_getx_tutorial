import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_dependencias/pages/metodos/delete_update/delete_controller.dart';

class DeletePage extends StatefulWidget {
  DeletePage({Key? key}) : super(key: key) {
    Get.put(DeleteController(nome: 'Add no inicio'));
  }

  @override
  State<DeletePage> createState() => _DeletePageState();
}

class _DeletePageState extends State<DeletePage> {
  String nome = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('nome: $nome'),
          ElevatedButton(
            onPressed: () {
              setState(() {
                nome = Get.find<DeleteController>().nome;
              });
            },
            child: const Text('Buscar nome'),
          ),
        ],
      )),
    );
  }
}
