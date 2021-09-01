import 'package:flutter/material.dart';

// Packages
import 'package:get/get.dart';

// Controllers
import 'package:emo_book_flutter/controllers/app_controller.dart';
import 'package:emo_book_flutter/controllers/user_controller.dart';

// Widgets
import 'package:emo_book_flutter/views/widgets/app_bar.dart';

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
