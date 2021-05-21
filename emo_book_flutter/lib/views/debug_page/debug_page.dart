import 'package:flutter/material.dart';
import 'package:get/get.dart';

// controllers
import 'package:emo_book_flutter/controllers/debug_controller.dart';

// widgets
import 'package:emo_book_flutter/views/widgets/app_bar.dart';

class DebugPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.put<DebugController>(DebugController());

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
        ElevatedButton(
            onPressed: () {
              print('ElevatedButton pressed!');
            },
            child: Text('ElevatedButton')),
        OutlinedButton(
            onPressed: () {
              print('OutlinedButton pressed!');
            },
            child: Text('OutlinedButton')),
      ],
    );
  }
}
