import 'package:flutter/material.dart';

class MiddlewareHomePage extends StatelessWidget {
  MiddlewareHomePage({Key? key}) : super(key: key) {
    debugPrint('Executando middleware page');
  }

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
          Text('MiddlewareHomePage'),
        ],
      )),
    );
  }
}
