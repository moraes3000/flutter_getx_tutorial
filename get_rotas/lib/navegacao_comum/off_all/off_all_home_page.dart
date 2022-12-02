import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_rotas/navegacao_comum/off_all/offall_page1.dart';

class OffAllHomePage extends StatefulWidget {
  const OffAllHomePage({Key? key}) : super(key: key);

  @override
  State<OffAllHomePage> createState() => _OffAllHomePageState();
}

class _OffAllHomePageState extends State<OffAllHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Off All'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return const OffallPage1();
                  },
                  settings: const RouteSettings(name: 'Page1'),
                ));
              },
              child: const Text('Got to page 1 com flutter nativo'),
            ),
            TextButton(
              onPressed: () {
                Get.to(const OffallPage1());
              },
              child: const Text('Got to page 1 com GetX'),
            ),
          ],
        ),
      ),
    );
  }
}
