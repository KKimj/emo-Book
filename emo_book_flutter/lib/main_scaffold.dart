import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'core_packages.dart';

import 'package:emo_book_flutter/views/book_page/book_page.dart';
import 'package:emo_book_flutter/views/home_page/home_page.dart';

import 'package:emo_book_flutter/viewmodels/book_viewmodel.dart';
import 'package:emo_book_flutter/viewmodels/user_viewmodel.dart';

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
    Get.lazyPut(() => BookViewmodel());
    Get.lazyPut(() => UserViewmodel());
  }
}
