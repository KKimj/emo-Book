import 'package:flutter/material.dart';

ThemeData EmoLightTheme = ThemeData.light().copyWith(
  primaryColor: Color(0xFF264653),
  accentColor: Color(0xFF2a9d8f),
  appBarTheme: AppBarTheme(color: Color(0xFF264653)),
  textTheme: TextTheme(
    headline6: TextStyle(color: Colors.black),
    subtitle1: TextStyle(color: Colors.black),
    subtitle2: TextStyle(color: Colors.black),
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
    headline6: TextStyle(color: Colors.white),
    subtitle1: TextStyle(color: Colors.white),
    subtitle2: TextStyle(color: Colors.white),
  ),
  textButtonTheme: TextButtonThemeData(),
  outlinedButtonTheme: OutlinedButtonThemeData(),
  elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
    primary: Colors.blue,
    onPrimary: Colors.white,
    onSurface: Colors.white,
  )),
);
