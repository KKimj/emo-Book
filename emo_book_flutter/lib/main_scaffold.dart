import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'core_packages.dart';

// controllers
import 'package:emo_book_flutter/controllers/app_controller.dart';
import 'package:emo_book_flutter/controllers/book_controller.dart';
import 'package:emo_book_flutter/controllers/user_controller.dart';

// views
import 'package:emo_book_flutter/views/book_page/book_page.dart';
import 'package:emo_book_flutter/views/home_page/home_page.dart';

class MainScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _getPages = <GetPage>[
      GetPage(name: '/', page: () => HomePage()),
      GetPage(name: '/book', page: () => BookPage()),
    ];

    return GetMaterialApp(
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
    Get.lazyPut(() => BookController());
    Get.lazyPut(() => UserController());
  }
}
