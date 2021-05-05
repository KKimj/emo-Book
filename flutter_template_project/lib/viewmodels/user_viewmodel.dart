import 'package:flutter_template_project/core_packages.dart';
import 'package:flutter_template_project/models/user_model.dart';

class UserViewmodel extends GetxController {
  var user = User(id: 1, name: 'Hello').obs;

  static UserViewmodel get to => Get.find();
}
