import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum FormFactorType { Monitor, SmallPhone, LargePhone, Tablet }

class DeviceOS {
  // Syntax sugar, proxy the UniversalPlatform methods so our views can reference a single class
  static bool isIOS = GetPlatform.isIOS;
  static bool isAndroid = GetPlatform.isAndroid;
  static bool isMacOS = GetPlatform.isMacOS;
  static bool isLinux = GetPlatform.isLinux;
  static bool isWindows = GetPlatform.isWindows;

  // Higher level device class abstractions (more syntax sugar for the views)
  static bool isWeb = GetPlatform.isWeb;
  static bool get isDesktop => isWindows || isMacOS || isLinux;
  static bool get isMobile => isAndroid || isIOS;
  static bool get isDesktopOrWeb => isDesktop || isWeb;
  static bool get isMobileOrWeb => isMobile || isWeb;
}

class DeviceScreen {
  // Get the device form factor as best we can.
  // Otherwise we will use the screen size to determine which class we fall into.
  static FormFactorType get(BuildContext context) {
    if (Get.width < 480) return FormFactorType.SmallPhone;
    if (Get.width < 767) return FormFactorType.LargePhone;
    if (Get.width < 1024) return FormFactorType.Tablet;
    return FormFactorType.Monitor;
  }

  // Shortcuts for various mobile device types
  static bool isPhone(BuildContext context) =>
      isSmallPhone(context) || isLargePhone(context);
  static bool isTablet(BuildContext context) =>
      get(context) == FormFactorType.Tablet;
  static bool isMonitor(BuildContext context) =>
      get(context) == FormFactorType.Monitor;
  static bool isSmallPhone(BuildContext context) =>
      get(context) == FormFactorType.SmallPhone;
  static bool isLargePhone(BuildContext context) =>
      get(context) == FormFactorType.LargePhone;

  static num width(BuildContext context) => Get.width;
  static num height(BuildContext context) => Get.height;
}
