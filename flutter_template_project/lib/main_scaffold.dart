import 'package:flutter/material.dart';
import 'package:flutter_template_project/viewmodels/test_viewmodel.dart';
import 'package:flutter_template_project/viewmodels/user_viewmodel.dart';
import 'package:get/get.dart';
import 'core_packages.dart';
import 'views/main_page.dart';
import 'views/sub_page.dart';

class MainScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _getPages = <GetPage>[
      GetPage(name: '/', page: () => MainPage()),
      GetPage(name: '/sub', page: () => SubPage()),
    ];

    return GetMaterialApp(
      home: MainPage(),
      theme: null,
      getPages: _getPages,
      initialBinding: AppBinding(),
    );
  }
}

class AppBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TestViewmodel());
    Get.lazyPut(() => UserViewmodel());
  }
}
