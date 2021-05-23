import 'package:emo_book_flutter/core_packages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

//controllers
import 'package:emo_book_flutter/controllers/app_controller.dart';

class EmoAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('Emo book'),
      actions: [
        GetBuilder<AppController>(
          builder: (_) {
            return IconButton(
                onPressed: () => AppController.to.toggleTheme(),
                icon: Icon(
                  AppController.to.isDarkMode
                      ? Icons.dark_mode
                      : Icons.light_mode,
                ));
          },
        )
      ],
    );
  }
}
