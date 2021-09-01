import 'package:flutter/material.dart';

// Packages
import 'package:get/get.dart';

//controllers
import 'package:emo_book_flutter/controllers/app_controller.dart';

class EmoAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(builder: (_) {
      return AppBar(
        title: Text('Emo book'),
        actions: [
          IconButton(
            onPressed: () {
              Get.toNamed('/user');
            },
            icon: Get.isDarkMode
                ? Icon(Icons.account_circle_outlined)
                : Icon(Icons.account_circle_rounded),
          ),
          IconButton(
            onPressed: () => _.toggleTheme(),
            // icon: _.isDarkMode.value
            icon:
                Get.isDarkMode ? Icon(Icons.dark_mode) : Icon(Icons.light_mode),
          ),
        ],
      );
    });
  }
}
