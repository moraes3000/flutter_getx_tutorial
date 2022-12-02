import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'send_params_page1.dart';

class SendParamsHomePage extends StatefulWidget {
  const SendParamsHomePage({Key? key}) : super(key: key);

  @override
  State<SendParamsHomePage> createState() => _SendParamsHomePageState();
}

class _SendParamsHomePageState extends State<SendParamsHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Parâmetros'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return const SendParamsPage1();
                    },
                    settings: const RouteSettings(
                      arguments: 'Parâmetro pelo Flutter nativo',
                    )));
              },
              child: const Text('Got to page com flutter nativo'),
            ),
            TextButton(
              onPressed: () {
                Get.to(
                  const SendParamsPage1(),
                  arguments: 'Parâmetro pelo GetX',
                );
              },
              child: const Text('Got to page com GetX'),
            ),
          ],
        ),
      ),
    );
  }
}
