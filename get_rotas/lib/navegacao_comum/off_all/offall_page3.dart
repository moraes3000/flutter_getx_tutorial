import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../navegacao_comum_home_page.dart';

class OffallPage3 extends StatefulWidget {
  const OffallPage3({Key? key}) : super(key: key);

  @override
  State<OffallPage3> createState() => _OffallPage3State();
}

class _OffallPage3State extends State<OffallPage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Off all page 3'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                // Navigator.of(context).push(MaterialPageRoute(
                //   builder: (context) {
                //     return const Page1();
                //   },
                // ));
              },
              child: const Text('Got to page com flutter nativo'),
            ),
            TextButton(
              onPressed: () {
                Get.to(const NavegacaoComumHomePage());
              },
              child: const Text('Got to page com GetX'),
            ),
          ],
        ),
      ),
    );
  }
}
