import 'package:emo_book_flutter/views/user_page/profile_widget.dart';
import 'package:flutter/material.dart';

// Packages
import 'package:get/get.dart';

// Controllers
import 'package:emo_book_flutter/controllers/user_controller.dart';

// Widgets
import 'package:emo_book_flutter/views/widgets/app_bar.dart';

class UserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<UserController>(builder: (_) {
      return Scaffold(
        body: Column(
          children: [
            EmoAppBar(),
            ElevatedButton(
                onPressed: () {
                  _.logout().then((_) => Get.offAllNamed('/'));
                },
                child: const Text('로그아웃')),
            Flexible(
              child: Center(
                child: GridView.builder(
                    itemCount: _.user.profiles.length + 1,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      if (index < _.user.profiles.length) {
                        return Profile(name: _.user.profiles[index]);
                      }
                      return Profile();
                    }),
              ),
            ),
          ],
        ),
      );
    });
  }
}
