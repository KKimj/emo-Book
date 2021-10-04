import 'package:flutter/material.dart';

// Packages
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';

// Controllers
import 'package:emo_book_flutter/controllers/app_controller.dart';
import 'package:emo_book_flutter/controllers/book_controller.dart';
import 'package:emo_book_flutter/controllers/debug_controller.dart';
import 'package:emo_book_flutter/controllers/emotion_controller.dart';
import 'package:emo_book_flutter/controllers/user_controller.dart';

class InitialBinding extends Bindings {
  @override
  Future<void> dependencies() async {
    WidgetsFlutterBinding.ensureInitialized();
    Get.put<AppController>(AppController(), permanent: true);
    Get.put<BookController>(BookController());
    Get.put<EmotionController>(EmotionController());
    Get.put<UserController>(UserController());
    Get.lazyPut<DebugController>(() => DebugController());

    await Firebase.initializeApp();
  }
}
