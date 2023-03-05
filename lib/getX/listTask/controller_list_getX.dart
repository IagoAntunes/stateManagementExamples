import 'package:get/get.dart';

class ControllerListGetX extends GetxController {
  var list = [].obs;

  void addList() {
    list.add('opa');
  }
}
