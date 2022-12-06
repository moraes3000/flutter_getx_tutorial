import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_dependencias/pages/metodos/delete_update/delete_controller.dart';
import 'package:get_dependencias/pages/metodos/delete_update/update_controller.dart';

class UpdateHome extends StatefulWidget {
  UpdateHome({Key? key}) : super(key: key) {
    Get.put(UpdateController(nome: 'Add no inicio'));
    Get.put(DeleteController(nome: 'Add no inicio'), permanent: true);
  }

  @override
  State<UpdateHome> createState() => _UpdateHomeState();
}

class _UpdateHomeState extends State<UpdateHome> {
  String nome = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Update'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('nome: $nome'),
          ElevatedButton(
            onPressed: () {
              setState(() {
                nome = Get.find<UpdateController>().nome;
              });
            },
            child: const Text('Buscar nome'),
          ),
          ElevatedButton(
            onPressed: () {
              Get.replace(
                  UpdateController(nome: 'alterado depois do click do botão'));
            },
            child: const Text('alterando instancia'),
          ),
          ElevatedButton(
            onPressed: () {
              Get.delete<UpdateController>();
            },
            child: const Text('Removendo instancia'),
          ),
        ],
      )),
    );
  }
}
