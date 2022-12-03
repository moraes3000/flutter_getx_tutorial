import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_rotas_nomeadas/pages/envio_parametros/envio_parametros_home_page.dart';
import 'package:get_rotas_nomeadas/pages/home_page.dart';
import 'package:get_rotas_nomeadas/pages/middleware/route_middleware.dart';

import 'pages/envio_parametros/arguments_param_page.dart';
import 'pages/envio_parametros/path_param_page.dart';
import 'pages/envio_parametros/query_param_page.dart';
import 'pages/inicial/page1.dart';
import 'pages/middleware/middleware_home_page.dart';
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
      routingCallback: (Routing? routing) {
        debugPrint(routing?.previous);
        debugPrint(routing?.current);
      },
      getPages: [
        GetPage(
          name: '/home',
          page: () => const HomePage(),
        ),
        GetPage(
          name: '/inicial/page1',
          page: () => const Page1(),
        ),
        GetPage(
            name: '/envio_parametros_home_page',
            page: () => const EnvioParametrosHomePage(),
            children: [
              GetPage(
                  name: '/arguments', page: () => const ArgumentsParamPage()),
              GetPage(
                  name: '/pathParam/:nome/jornadaGetX',
                  page: () => const PathParamPage()),
              GetPage(name: '/queryParam', page: () => const QueryParamPage()),
            ]),
        GetPage(
            name: '/MiddlewareHomePage',
            page: () => MiddlewareHomePage(),
            middlewares: [
              RouteMiddleware(),
            ]),
      ],
    );
  }
}
