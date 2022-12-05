import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_rotas_nomeadas/pages/nested_navigation/pages/android_page.dart';
import 'package:get_rotas_nomeadas/pages/nested_navigation/pages/apple_page.dart';

class HomeNestedNavigation extends StatelessWidget {
  HomeNestedNavigation({Key? key}) : super(key: key);

  final currentBottomIndex = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeNestedNavigation'),
      ),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
              currentIndex: currentBottomIndex.value,
              onTap: (value) {
                switch (value) {
                  case 0:
                    Get.offNamed('/apple', id: 1);
                    break;
                  case 1:
                    Get.offNamed('/android', id: 1);
                    break;
                }
              },
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.apple), label: 'Apple'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.android), label: 'android'),
              ])),
      body: Navigator(
        key: Get.nestedKey(1),
        initialRoute: '/',
        onGenerateRoute: (settings) {
          Widget page;
          Transition transition;

          if (settings.name == '/apple') {
            page = const ApplePage();
            transition = Transition.leftToRight;
          } else if (settings.name == '/android') {
            page = const AndroidPage();
            transition = Transition.rightToLeft;
          } else {
            page = const Center(child: Text('página não encontrada'));
            transition = Transition.fade;
          }

          return GetPageRoute(
            page: () => page,
            transition: transition,
          );
        },
      ),
    );
  }
}
