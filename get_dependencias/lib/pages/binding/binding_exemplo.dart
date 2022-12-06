import 'package:get/get.dart';
import 'package:get_dependencias/pages/binding/binding_controller.dart';

class BindingExemplo extends Bindings {
  @override
  void dependencies() {
    Get.put(BindingController(nome: 'Incializado dentro do binding'));
  }
}
