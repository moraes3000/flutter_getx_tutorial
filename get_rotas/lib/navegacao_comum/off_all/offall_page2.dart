import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_rotas/navegacao_comum/off_all/offall_page3.dart';

class OffallPage2 extends StatefulWidget {
  const OffallPage2({Key? key}) : super(key: key);

  @override
  State<OffallPage2> createState() => _OffallPage2State();
}

class _OffallPage2State extends State<OffallPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Off all page 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(
                  builder: (context) {
                    return const OffallPage3();
                  },
                ), (route) => false);
              },
              child: const Text(
                  'got to page 3 excluindo toda  a arvore de navegação fluter nativo'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(
                  builder: (context) {
                    return const OffallPage3();
                  },
                ), ModalRoute.withName('/OffAllHomePage'));
              },
              child: const Text(
                  'got to page 3 excluindo parte da a arvore de navegação fluter nativo'),
            ),
            TextButton(
              onPressed: () {
                Get.offAll(const OffallPage3());
              },
              child: const Text('Got to page 3 com GetX'),
            ),
          ],
        ),
      ),
    );
  }
}
