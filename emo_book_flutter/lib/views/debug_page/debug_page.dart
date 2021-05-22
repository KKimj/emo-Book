import 'package:emo_book_flutter/controllers/app_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// controllers
import 'package:emo_book_flutter/controllers/debug_controller.dart';
import 'package:emo_book_flutter/controllers/emotion_controller.dart';

// widgets
import 'package:emo_book_flutter/views/widgets/app_bar.dart';

// themes
import 'package:emo_book_flutter/themes.dart';

class DebugPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.put<DebugController>(DebugController());
    Get.put<AppController>(AppController());
    Get.put<EmotionController>(EmotionController());

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            EmoAppBar(),
            Text('Debug page!'),
            _DebugPageBody(),
          ],
        ),
      ),
    );
  }
}

class _DebugPageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Debug body'),
        TextButton(
            onPressed: () {
              print('isDesktop : ${DebugController.to.isDesktop}');
              print('isWindows : ${DebugController.to.isWindows}');
              print('isMacOS : ${DebugController.to.isMacOS}');
              print('isLinux : ${DebugController.to.isLinux}');

              print('isWeb : ${DebugController.to.isWeb}');
              print('isMobile : ${DebugController.to.isMobile}');
              print('isAndroid : ${DebugController.to.isAndroid}');
              print('isIos : ${DebugController.to.isIos}');
            },
            child: Text(DebugController.to.PlatformMessage)),
        GetBuilder<EmotionController>(
          builder: (_) {
            return ElevatedButton(
                onPressed: () {
                  var emotion = 'joy';
                  print('${EmotionController.to.emotion_seletions[emotion]}');
                  EmotionController.to.toggle_emotion(emotion);
                  print('${EmotionController.to.emotion_seletions[emotion]}');

                  // EmotionController.to.emotion_seletions[emotion] = true;
                },
                child: Text(EmotionController.to.toJson.toString()));
          },
        ),
        OutlinedButton(
            onPressed: () {
              Get.changeTheme(ThemeData.dark());
            },
            child: Text('Dark mode!')),
        OutlinedButton(
            onPressed: () {
              Get.changeTheme(ThemeData.light());
            },
            child: Text('Light mode!')),
        OutlinedButton(
            onPressed: () {
              Get.changeTheme(
                  Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
            },
            child: Text('Toggle theme!')),
        OutlinedButton(
            onPressed: () {
              Get.changeTheme(EmoDarkTheme);
            },
            child: Text('Custom Dark theme!')),
        OutlinedButton(
            onPressed: () {
              Get.changeTheme(EmoLightTheme);
            },
            child: Text('Custom Light theme!')),
        ElevatedButton(
            onPressed: () {
              AppController.to.toggleTheme();
            },
            child: Text('toggle Emo theme!')),
      ],
    );
  }
}
