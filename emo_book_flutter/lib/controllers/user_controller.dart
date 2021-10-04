import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

// Services
import 'package:emo_book_flutter/services/firebase/firebase_service.dart';

// Models
import 'package:emo_book_flutter/models/user_model.dart';

enum Status {
  success,
}

class UserController extends GetxController {
  static UserController get to => Get.find<UserController>();
  User user = User();

  Future<dynamic> login(
      {String email = '',
      String password = '',
      bool isGoogleLogin = false}) async {
    late Map<String, dynamic> json;
    if (isGoogleLogin) {
      json = (await FirebaseService().loginWithGoogle())!;
    } else {
      json =
          (await FirebaseService().loginWithEmailAndPassword(email, password))!;
    }
    if (json['isError']) {
      return json['code'];
    }
    user = User.fromJson(json);
    update();
    return Status.success;
  }

  Future<dynamic> signup(
      {required String email,
      required String password,
      required Map<String, dynamic> user}) async {
    user['email'] = email;
    Map<String, dynamic> json =
        (await FirebaseService().signup(email, password, user))!;
    if (json['isError']) {
      return json['code'];
    }
    this.user = User.fromJson(json);
    update();
    return Status.success;
  }

  Future<dynamic> logout() async {
    user = User();
    await FirebaseService().logout();
    update();
  }

  Future<dynamic> addProfile({String profile_name = '새로운프로필'}) async {
    var json = user.toJson();
    List profiles = json['profiles'];
    profiles += [profile_name];
    json['profiles'] = profiles;
    user = User.fromJson(json);
    String uid = user.uid ?? '';
    await FirebaseService().updateDoc([CollectionKeys.users, uid], json);
    update();
  }
}
