import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MetodosHomePage extends StatelessWidget {
  const MetodosHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Metodos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/metodos/put');
              },
              child: const Text('Put'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/metodos/lazyPut');
              },
              child: const Text('LazyPut'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/metodos/PutAsyncPage');
              },
              child: const Text('PutAsync'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/metodos/CreateHomePage');
              },
              child: const Text('Create'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/metodos/UpdateHome');
              },
              child: const Text('UpdateHome'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.offNamed('/metodos/DeletePage');
              },
              child: const Text('DeletePage'),
            ),
          ],
        ),
      ),
    );
  }
}
