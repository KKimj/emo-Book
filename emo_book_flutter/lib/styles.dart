import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Font {}

class Buttons {
  static ButtonStyle get emotion_pressed => ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all<Color>(Colors.lightBlueAccent),
        // shape: MaterialStateProperty<OutlinedBorder>
        textStyle: MaterialStateProperty.all<TextStyle>(
            TextStyle(fontSize: 10.0, color: Colors.white)),
        elevation: MaterialStateProperty.all<double>(1.0),
        // padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
        //   EdgeInsets.fromLTRB(10, 10, 10, 10),
        // ),
      );
  static ButtonStyle get emotion_unpressed => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
        // shape: MaterialStateProperty<OutlinedBorder>
        textStyle: MaterialStateProperty.all<TextStyle>(
            TextStyle(fontSize: 10.0, color: Colors.blue)),
        elevation: MaterialStateProperty.all<double>(4.0),
        // padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
        //   EdgeInsets.fromLTRB(10, 10, 10, 10),
        // ),
      );

  static ButtonStyle get emotion_pressed_evlvated => ElevatedButton.styleFrom(
      elevation: 1.0,
      primary: Colors.lightBlueAccent,
      onPrimary: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)));

  static ButtonStyle get emotion_unpressed_evlvated => ElevatedButton.styleFrom(
      elevation: 4.0,
      primary: Colors.white,
      onPrimary: Colors.blue,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)));
}
