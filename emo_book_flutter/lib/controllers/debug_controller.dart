import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

// model
import 'package:emo_book_flutter/models/app_model.dart';

class DebugController extends GetxController {
  static DebugController get to => Get.find();

  bool get isWeb => GetPlatform.isWeb;
  bool get isDesktop => GetPlatform.isDesktop;
  bool get isMobile => GetPlatform.isMobile;
  bool get isAndroid => GetPlatform.isAndroid;
  bool get isIos => GetPlatform.isIOS;
  bool get isLinux => GetPlatform.isLinux;
  bool get isMacOS => GetPlatform.isMacOS;
  bool get isWindows => GetPlatform.isWindows;

  String get PlatformMessage {
    return 'isDesktop : ${DebugController.to.isDesktop}\n'
        'isWindows : ${DebugController.to.isWindows}\n'
        'isMacOS : ${DebugController.to.isMacOS}\n'
        'isLinux : ${DebugController.to.isLinux}\n'
        'isWeb : ${DebugController.to.isWeb}\n'
        'isMobile : ${DebugController.to.isMobile}\n'
        'isAndroid : ${DebugController.to.isAndroid}\n'
        'isIos : ${DebugController.to.isIos}\n';
  }
}
