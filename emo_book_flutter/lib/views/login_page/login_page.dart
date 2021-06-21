import 'package:flutter/material.dart';
import 'package:get/get.dart';

// controllers
import 'package:emo_book_flutter/controllers/app_controller.dart';
import 'package:emo_book_flutter/controllers/user_controller.dart';

// widgets
import 'package:emo_book_flutter/views/widgets/app_bar.dart';

// themes
import 'package:emo_book_flutter/themes.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.put<AppController>(AppController());
    Get.put<UserController>(UserController());

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            EmoAppBar(),
            Text('Login page!'),
          ],
        ),
      ),
    );
  }
}
