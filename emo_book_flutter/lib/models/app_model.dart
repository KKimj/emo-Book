class App {
  //Screen
  late String title;
  var isDarkMode;
  _ScreenBreakPoints screenBreakpoints = _ScreenBreakPoints();
}

class _ScreenBreakPoints {
  double desktop = 1024; // 1920
  double tablet = 768;
  double watch = 200;
}
