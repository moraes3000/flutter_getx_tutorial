import 'package:get/get.dart';
import 'package:get_dependencias/pages/initialBinding/auth_model.dart';

class InitialBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(
      AuthModel(
          name: 'bruno moraes',
          email: 'bruno_bmoraes@hotmail.com',
          curso: 'jornadaGetX'),
      permanent: true,
    );
  }
}
