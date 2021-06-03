import 'package:flutter/material.dart';

// styles
import 'package:emo_book_flutter/styles.dart';

ThemeData EmoLightTheme = ThemeData.light().copyWith(
  primaryColor: Color(0xFF264653),
  accentColor: Color(0xFF2a9d8f),
  appBarTheme: AppBarTheme(color: Color(0xFF264653)),
  textTheme: TextTheme(
    headline1: TextStyles.h1,
    headline2: TextStyles.h2,
    headline3: TextStyles.h3,
    headline4: TextStyles.h4,
    headline5: TextStyles.h5,
    headline6: TextStyles.h6,
    subtitle1: TextStyles.subtitle1,
    subtitle2: TextStyles.subtitle2,
    bodyText1: TextStyles.body1,
    bodyText2: TextStyles.body2,
    button: TextStyles.button,
    caption: TextStyles.caption,
  ),
  textButtonTheme: TextButtonThemeData(),
  outlinedButtonTheme: OutlinedButtonThemeData(),
  elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
    primary: Colors.white,
    onPrimary: Colors.blue,
    onSurface: Colors.white,
  )),
);

ThemeData EmoDarkTheme = ThemeData.dark().copyWith(
  primaryColor: Color(0xFF264653),
  accentColor: Color(0xFF2a9d8f),
  appBarTheme: AppBarTheme(color: Color(0xFF264653)),
  textTheme: TextTheme(
    headline1: TextStyles.h1,
    headline2: TextStyles.h2,
    headline3: TextStyles.h3,
    headline4: TextStyles.h4,
    headline5: TextStyles.h5,
    headline6: TextStyles.h6,
    subtitle1: TextStyles.subtitle1,
    subtitle2: TextStyles.subtitle2,
    bodyText1: TextStyles.body1,
    bodyText2: TextStyles.body2,
    button: TextStyles.button,
    caption: TextStyles.caption,
  ).apply(bodyColor: Colors.white, displayColor: Colors.white),
  textButtonTheme: TextButtonThemeData(),
  outlinedButtonTheme: OutlinedButtonThemeData(),
  elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
    primary: Colors.blue,
    onPrimary: Colors.white,
    onSurface: Colors.white,
  )),
);
