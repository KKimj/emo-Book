import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

// model
import 'package:emo_book_flutter/models/app_model.dart';

class AppController extends GetxController {
  static AppController get to => Get.find();

  var app = App();

  AppController() {
    ResponsiveSizingConfig.instance.setCustomBreakpoints(ScreenBreakpoints(
        desktop: desktop_breakpoint,
        tablet: tablet_breakpoint,
        watch: watch_breakpoint));
  }

  bool get isWeb => GetPlatform.isWeb;
  bool get isDesktop => GetPlatform.isDesktop;
  bool get isMobile => GetPlatform.isMobile;
  bool get isAndroid => GetPlatform.isAndroid;
  bool get isIos => GetPlatform.isIOS;
  bool get isLinux => GetPlatform.isLinux;
  bool get isMacOS => GetPlatform.isMacOS;
  bool get isWindows => GetPlatform.isWindows;

  void update_ScreenBreakpoints(
      {double? desktop, double? table, double? watch}) {
    ResponsiveSizingConfig.instance.setCustomBreakpoints(ScreenBreakpoints(
        desktop: desktop_breakpoint,
        tablet: tablet_breakpoint,
        watch: watch_breakpoint));
    update();
  }

  double get desktop_breakpoint => app.screenBreakpoints.desktop;
  double get tablet_breakpoint => app.screenBreakpoints.tablet;
  double get watch_breakpoint => app.screenBreakpoints.watch;

  set desktop_breakpoint(double desktop) {
    app.screenBreakpoints.desktop = desktop;
    update_ScreenBreakpoints();
  }

  set tablet_breakpoint(double tablet) {
    app.screenBreakpoints.desktop = tablet;
    update_ScreenBreakpoints();
  }

  set watch_breakpoint(double watch) {
    app.screenBreakpoints.desktop = watch;
    update_ScreenBreakpoints();
  }
}
