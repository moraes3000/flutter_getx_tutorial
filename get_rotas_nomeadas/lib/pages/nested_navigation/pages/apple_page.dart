import 'package:flutter/material.dart';

class ApplePage extends StatefulWidget {
  const ApplePage({Key? key}) : super(key: key);

  @override
  State<ApplePage> createState() => _ApplePageState();
}

class _ApplePageState extends State<ApplePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Icon(Icons.apple)),
    );
  }
}
