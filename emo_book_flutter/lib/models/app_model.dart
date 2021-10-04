class App {
  //Screen
  late String title;
  bool isDarkMode = true;
  bool isInitialized = false;
  _ScreenBreakPoints screenBreakpoints = _ScreenBreakPoints();
}

class _ScreenBreakPoints {
  double desktop = 1024; // 1920
  double tablet = 768;
  double watch = 200;
}
