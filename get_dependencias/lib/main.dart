import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_dependencias/pages/basico/basico_home_page.dart';
import 'package:get_dependencias/pages/home_page.dart';
import 'package:get_dependencias/pages/initialBinding/initial_binding.dart';
import 'package:get_dependencias/pages/metodos/metodos_home_page.dart';

import 'pages/binding/binding_controller.dart';
import 'pages/binding/binding_exemplo.dart';
import 'pages/binding/home_bindings.dart';
import 'pages/initialBinding/initial_binding_page.dart';
import 'pages/metodos/create/create_home_page.dart';
import 'pages/metodos/delete_update/delete_page.dart';
import 'pages/metodos/delete_update/update_home.dart';
import 'pages/metodos/lazy_put_page/lazy_put_page.dart';
import 'pages/metodos/put/put_page.dart';
import 'pages/metodos/putAsync/putAsync_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: InitialBinding(),
      getPages: [
        GetPage(name: '/', page: () => const HomePage()),
        GetPage(name: '/basico', page: () => BasicoHomePage()),
        GetPage(
            name: '/metodos',
            page: () => const MetodosHomePage(),
            children: [
              GetPage(name: '/put', page: () => const PutPage()),
              GetPage(name: '/lazyPut', page: () => LazyPutPage()),
              GetPage(name: '/PutAsyncPage', page: () => PutAsyncPage()),
              GetPage(name: '/CreateHomePage', page: () => CreateHomePage()),
              GetPage(name: '/UpdateHome', page: () => UpdateHome()),
              GetPage(name: '/DeletePage', page: () => DeletePage()),
            ]),
        GetPage(
            name: '/HomeBindings',
            page: () => HomeBindings(),
            binding: BindingExemplo()),
        GetPage(
            name: '/BindingsBuilder',
            page: () => HomeBindings(),
            binding: BindingsBuilder(() {
              Get.put(
                  BindingController(nome: 'Inicializado dentro do binding'));
            })),
        GetPage(
            name: '/BindingsBuilderPut',
            page: () => HomeBindings(),
            binding: BindingsBuilder.put(() =>
                BindingController(nome: 'Inicializado dentro do binding'))),
        GetPage(name: '/InitialBindingPage', page: () => InitialBindingPage()),
      ],
    );
  }
}
