import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'core_packages.dart';

// controllers
import 'package:emo_book_flutter/controllers/app_controller.dart';
import 'package:emo_book_flutter/controllers/book_controller.dart';
import 'package:emo_book_flutter/controllers/user_controller.dart';
import 'package:emo_book_flutter/controllers/emotion_controller.dart';

// views
import 'package:emo_book_flutter/views/book_page/book_page.dart';
import 'package:emo_book_flutter/views/home_page/home_page.dart';

// dev
import 'package:emo_book_flutter/controllers/debug_controller.dart';
import 'package:emo_book_flutter/views/debug_page/debug_page.dart';

class MainScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _getPages = <GetPage>[
      GetPage(name: '/', page: () => HomePage()),
      GetPage(
          name: '/book',
          page: () {
            late String book_id;
            book_id = 'test_id';
            return BookPage(
              bookid: book_id,
            );
          }),
      GetPage(name: '/debug', page: () => DebugPage()),
    ];

    return GetMaterialApp(
      title: 'emo-book :: 감정기반 도서 추천 서비스',
      home: HomePage(),
      theme: null,
      getPages: _getPages,
      initialBinding: AppBinding(),
    );
  }
}

class AppBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<AppController>(AppController());
    Get.put<BookController>(BookController());
    Get.put<UserController>(UserController());
    Get.put<EmotionController>(EmotionController());

    Get.lazyPut(() => DebugController());
    // Get.lazyPut(() => UserController());
  }
}
