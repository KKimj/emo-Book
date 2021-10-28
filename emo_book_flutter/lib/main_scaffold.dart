import 'package:emo_book_flutter/views/history_page/history_page.dart';
import 'package:emo_book_flutter/views/recommand_page/recommand_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'core_packages.dart';

// Bindings
import 'package:emo_book_flutter/bindings/initialbinding.dart';

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
import 'package:emo_book_flutter/views/signup_page/signup_page.dart';

// Dev
import 'package:emo_book_flutter/controllers/debug_controller.dart';
import 'package:emo_book_flutter/views/debug_page/debug_page.dart';

class MainScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _getPages = <GetPage>[
      GetPage(
        name: '/',
        page: () => HomePage(),
        middlewares: [GlobalMiddleware()],
      ),
      //
      GetPage(
        name: '/book/',
        page: () => BookPage(),
        middlewares: [GlobalMiddleware()],
      ),
      GetPage(
        name: '/book/:isbn',
        page: () => BookPage(),
        middlewares: [GlobalMiddleware()],
      ),
      //
      GetPage(name: '/login', page: () => LoginPage()),
      //
      GetPage(name: '/signup', page: () => SignupPage()),

      GetPage(
        name: '/user',
        page: () => UserPage(),
        middlewares: [GlobalMiddleware()],
      ),
      GetPage(
        name: '/user/:uid',
        page: () => UserPage(),
        middlewares: [GlobalMiddleware()],
      ),

      //
      GetPage(
        name: '/recommand',
        page: () => RecommandPage(),
        middlewares: [GlobalMiddleware()],
      ),

      //
      GetPage(
        name: '/history',
        page: () => HistoryPage(),
        middlewares: [GlobalMiddleware(), HistoryMiddleware()],
      ),

      //
      GetPage(name: '/debug', page: () => DebugPage()),
    ];

    return GetMaterialApp(
      title: 'emo-book :: 감정기반 도서 추천 서비스',
      onInit: () {
        InitialBinding()
            .dependencies()
            .then((value) => AppController.to.setInitialized());
      },
      initialRoute: '/login',
      theme: EmoDarkTheme,
      getPages: _getPages,
    );
  }
}

class GlobalMiddleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    if (!UserController.to.isLogin) {
      return const RouteSettings(name: '/login');
    }
  }
}

class HistoryMiddleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    if (!UserController.to.isSetProfile) {
      return const RouteSettings(name: '/user');
    }
  }
}
