import 'dart:convert';

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
        ElevatedButton(
            onPressed: () {
              DebugProvider.to.getDummyBook().then((value) {
                print(value);
                print(value.bodyString);
                print(value.status);
                print(value.status.code);
              });
            },
            child: Text('DebugProvider.to.getDummyBook()')),
        ElevatedButton(
            onPressed: () {
              DebugProvider.to.getBook('0312984839').then((value) {
                print(value);
                print(value.bodyString);
                print(value.status);
                print(value.status.code);
              });
            },
            child: Text('DebugProvider.to.getBook()')),
        ElevatedButton(
            onPressed: () {
              DebugProvider.to.getDummyBook2().then((value) {
                print(value);
                print(value[0].info);
              });
            },
            child: Text('DebugProvider.to.Book api')),
        ElevatedButton(
            onPressed: () {
              DebugProvider.to.getDummyBook3().then((value) {
                print(value);
                print(value[0].info);
              });
            },
            child: Text('DebugProvider.to.Book api')),
        ElevatedButton(
            onPressed: () {
              DebugProvider.to.getBookWithIsbn('074995552X').then((value) {
                print(value);
              });
            },
            child: Text('getBookWithIsbn api')),
        ElevatedButton(
            onPressed: () async {
              var response = await DebugProvider.to.getGCloudTest();
              print(response);
              // print(response.body);
              print(response.statusCode);
              print(response.statusText);
              print(response.bodyString);
            },
            child: Text('get GCloud test API')),
        ElevatedButton(
            onPressed: () async {
              var response = await DebugProvider.to.getAPI();
              print(response);
              // print(response.body);
              print(response.statusCode);
              print(response.statusText);
              print(response.bodyString);
            },
            child: Text('get API')),
        ElevatedButton(
            onPressed: () async {
              var response = await DebugProvider.to.getTable();
              print(response);
              // print(response.body);
              print(response.statusCode);
              print(response.statusText);
              print(response.bodyString);
            },
            child: Text('get Table')),
        ElevatedButton(
            onPressed: () async {
              var response = await DebugProvider.to.getJsonTest2();
              print(response);
              // print(response.body);
              print(response.statusCode);
              print(response.statusText);
              print(response.bodyString);
            },
            child: Text('get JsonTest2')),
        ElevatedButton(
            onPressed: () async {
              var response = await DebugProvider.to.getJsonTest3();
              print(response);
              // print(response.body);
              print(response.statusCode);
              print(response.statusText);
              print(response.bodyString);
            },
            child: Text('get JsonTest3')),
        ElevatedButton(
            onPressed: () async {
              var response = await DebugProvider.to.getAPI3(count: 3);
              print(response);
              // print(response.body);
              print(response.statusCode);
              print(response.statusText);
              print(response.bodyString);

              String responseString = response.body.toString();
              // Json String must be wrapped with double-quoted
              responseString = responseString.replaceAll("'", '"');
              List<dynamic> _isbns = json.decode(responseString);
              print(_isbns);
              print(_isbns[0]);
              print(_isbns[0].runtimeType);
              print(_isbns[0][1]);

              // print(list[0].runtimeType);
            },
            child: Text('get API V3')),
      ],
    );
  }
}
