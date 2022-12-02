import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_rotas/navegacao_comum/back/back_home_page.dart';
import 'package:get_rotas/navegacao_comum/off/off_home_page.dart';

import 'off_all/off_all_home_page.dart';
import 'to/to_home_page.dart';

class NavegacaoComumHomePage extends StatelessWidget {
  const NavegacaoComumHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Navegação comum'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.to(ToHomePage());
              },
              child: const Text('TO (push)'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(BackHomePage());
              },
              child: const Text('Back (pop)'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(OffHomePage());
              },
              child: const Text('Off (replacement)'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(OffAllHomePage());
              },
              child: const Text('OffAll (PopAndRemoveUntil)'),
            ),
          ],
        ),
      ),
    );
  }
}
