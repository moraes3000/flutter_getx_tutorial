import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_rotas_nomeadas/pages/home_page.dart';

import 'pages/inicial/page1.dart';
import 'pages/rota_nao_encontrada/rota_nao_encontrada_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      unknownRoute: GetPage(
        name: '/404',
        page: () => const RotaNaoEncontradaPage(),
      ),
      initialRoute: '/home',
      getPages: [
        GetPage(
          name: '/home',
          page: () => const HomePage(),
        ),
        GetPage(
          name: '/inicial/page1',
          page: () => const Page1(),
        ),
      ],
    );
  }
}
