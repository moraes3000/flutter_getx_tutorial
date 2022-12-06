import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PutAsyncPage extends StatefulWidget {
  PutAsyncPage({Key? key}) : super(key: key) {
    Get.putAsync(() async {
      final prefs = await SharedPreferences.getInstance();
      prefs.setString('nome', 'put-async exemplo');
      return prefs;
    }, permanent: true);
  }

  @override
  State<PutAsyncPage> createState() => _PutAsyncPageState();
}

class _PutAsyncPageState extends State<PutAsyncPage> {
  String nome = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PutAsync'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('nome: $nome'),
          ElevatedButton(
            onPressed: () {
              nome = Get.find<SharedPreferences>().getString('nome') ??
                  'nome não encontrado';
            },
            child: const Text('Buscar nome'),
          ),
          ElevatedButton(
            onPressed: () {
              Get.find<SharedPreferences>().setString('nome', 'nome alterado');
            },
            child: const Text('Alterar nome'),
          ),
        ],
      )),
    );
  }
}
