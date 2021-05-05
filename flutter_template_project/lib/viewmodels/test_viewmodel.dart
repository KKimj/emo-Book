import 'package:flutter_template_project/core_packages.dart';
import 'package:flutter_template_project/models/test_model.dart';

class TestViewmodel extends GetxController {
  var test = Test(id: 0, value: 0);

  void test_update({required int id, required int value}) {
    test = test.copyWith(id: id, value: value);
    update();
  }

  static TestViewmodel get to => Get.find();
}
