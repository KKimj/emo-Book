import 'package:emo_book_flutter/controllers/user_controller.dart';
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
          TextButton(
              onPressed: () => UserController.to.user.uid != null
                  ? Get.toNamed('/user/${UserController.to.user.uid}')
                  : Get.toNamed('/login'),
              child: Text('${UserController.to.user.name} 님')),
          TextButton.icon(
              onPressed: () {
                Get.toNamed('/history');
              },
              icon: const Icon(Icons.history),
              label: const Text('나의 평점기록')),
          TextButton.icon(
            onPressed: () {
              Get.toNamed('/user');
            },
            icon: Get.isDarkMode
                ? const Icon(Icons.account_circle_outlined)
                : const Icon(Icons.account_circle_rounded),
            label: GetBuilder<UserController>(
                builder: (_) => Text(_.profile_name)),
          ),
          IconButton(
            onPressed: () => _.toggleTheme(),
            // icon: _.isDarkMode.value
            icon: Get.isDarkMode
                ? const Icon(Icons.dark_mode)
                : const Icon(Icons.light_mode),
          ),
        ],
      );
    });
  }
}
