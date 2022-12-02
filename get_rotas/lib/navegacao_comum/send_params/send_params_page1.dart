import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SendParamsPage1 extends StatelessWidget {
  const SendParamsPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final paramNativo =
        ModalRoute.of(context)?.settings.arguments ?? 'Param não enviado';

    final paramGetX = Get.arguments ?? 'Param não enviado';

    return Scaffold(
      appBar: AppBar(
        title: const Text('Recendo paramentos'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Nativo ${paramNativo}'),
          Text('----------------------'),
          Text('Get ${paramGetX}'),
        ],
      )),
    );
  }
}
