import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'core_packages.dart';

// Controllers
import 'package:emo_book_flutter/controllers/app_controller.dart';
import 'package:emo_book_flutter/controllers/book_controller.dart';
import 'package:emo_book_flutter/controllers/user_controller.dart';
import 'package:emo_book_flutter/controllers/emotion_controller.dart';

// Views
import 'package:emo_book_flutter/views/book_page/book_page.dart';
import 'package:emo_book_flutter/views/home_page/home_page.dart';
import 'package:emo_book_flutter/views/user_page/user_page.dart';
import 'package:emo_book_flutter/views/login_page/login_page.dart';

// Dev
import 'package:emo_book_flutter/controllers/debug_controller.dart';
import 'package:emo_book_flutter/views/debug_page/debug_page.dart';

class MainScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _getPages = <GetPage>[
      GetPage(name: '/', page: () => HomePage()),
      //
      GetPage(name: '/book/', page: () => BookPage()),
      GetPage(name: '/book/:isbn', page: () => BookPage()),
      //
      GetPage(name: '/login', page: () => LoginPage()),
      //
      GetPage(name: '/user', page: () => UserPage()),
      //
      GetPage(name: '/debug', page: () => DebugPage()),
    ];

    return GetMaterialApp(
      title: 'emo-book :: 감정기반 도서 추천 서비스',
      home: HomePage(),
      theme: EmoLightTheme,
      getPages: _getPages,
      initialBinding: AppBinding(),
    );
  }
}

class AppBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<AppController>(AppController(), permanent: true);
    Get.put<BookController>(BookController());
    Get.put<EmotionController>(EmotionController());

    Get.put<UserController>(UserController());

    Get.lazyPut(() => DebugController());
    // Get.lazyPut(() => UserController());
  }
}
