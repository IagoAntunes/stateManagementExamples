import 'package:get/get.dart';

class ControllerCounterGetx extends GetxController {
  var contador = 0.obs;

  void incrementar() {
    contador++;
  }
}
