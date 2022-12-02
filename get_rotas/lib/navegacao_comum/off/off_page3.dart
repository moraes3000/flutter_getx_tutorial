import 'package:flutter/material.dart';

class OffPage3 extends StatefulWidget {
  const OffPage3({Key? key}) : super(key: key);

  @override
  State<OffPage3> createState() => _OffPage3State();
}

class _OffPage3State extends State<OffPage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('off page 3'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                // Navigator.of(context).push(MaterialPageRoute(
                //   builder: (context) {
                //     return const OffPage3();
                //   },
                // ));
              },
              child: const Text('Got to page com flutter nativo'),
            ),
            TextButton(
              onPressed: () {
                // Get.to(const OffPage3());
              },
              child: const Text('Got to page com GetX'),
            ),
          ],
        ),
      ),
    );
  }
}
