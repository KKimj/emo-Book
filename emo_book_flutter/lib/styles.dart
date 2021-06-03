import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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

  static ButtonStyle get emotion_pressed_evlvated_dark =>
      ElevatedButton.styleFrom(
          elevation: 1.0,
          primary: Colors.lightBlue[900],
          onPrimary: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0)));

  static ButtonStyle get emotion_unpressed_evlvated_dark =>
      ElevatedButton.styleFrom(
          elevation: 4.0,
          primary: Colors.grey,
          onPrimary: Colors.white60,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0)));
}

/// Fonts - A list of Font Families, this is uses by the TextStyles class to create concrete styles.
class Fonts {
  static const String NanumSquareRound = 'NanumSquareRound';
}

/// Font Sizes
/// You can use these directly if you need, but usually there should be a predefined style in TextStyles.
class FontSizes {
  /// Provides the ability to nudge the app-wide font scale in either direction
  static double get scale => 1;
  static double get s10 => 10 * scale;
  static double get s11 => 11 * scale;
  static double get s12 => 12 * scale;
  static double get s14 => 14 * scale;
  static double get s16 => 16 * scale;
  static double get s20 => 20 * scale;
  static double get s24 => 24 * scale;
  static double get s34 => 34 * scale;
  static double get s48 => 48 * scale;
  static double get s60 => 60 * scale;
  static double get s96 => 96 * scale;
}

/// TextStyles - All the core text styles for the app should be declared here.
/// Don't try and create every variant in existence here, just the high level ones.
/// More specific variants can be created on the fly using `style.copyWith()`
/// `newStyle = TextStyles.body1.copyWith(lineHeight: 2, color: Colors.red)`
class TextStyles {
  /// Declare a base style for each Family
  static const TextStyle NanumSquareRound = TextStyle(
      color: Colors.black,
      fontFamily: Fonts.NanumSquareRound,
      fontWeight: FontWeight.w400,
      height: 1);

  static TextStyle get h1 => NanumSquareRound.copyWith(
      fontWeight: FontWeight.w300,
      fontSize: FontSizes.s96,
      letterSpacing: -1.5,
      height: 1.17);
  static TextStyle get h2 =>
      h1.copyWith(fontSize: FontSizes.s60, letterSpacing: -.5, height: 1.16);
  static TextStyle get h3 =>
      h1.copyWith(fontSize: FontSizes.s48, letterSpacing: 0, height: 1.29);
  static TextStyle get h4 =>
      h1.copyWith(fontSize: FontSizes.s34, letterSpacing: 0, height: 1.29);
  static TextStyle get h5 =>
      h1.copyWith(fontSize: FontSizes.s24, letterSpacing: 0, height: 1.29);
  static TextStyle get h6 =>
      h1.copyWith(fontSize: FontSizes.s20, letterSpacing: 0, height: 1.29);
  static TextStyle get subtitle1 => NanumSquareRound.copyWith(
      fontWeight: FontWeight.w400, fontSize: FontSizes.s16, height: 1.31);
  static TextStyle get subtitle2 => subtitle1.copyWith(
      fontWeight: FontWeight.w500, fontSize: FontSizes.s14, height: 1.36);
  static TextStyle get body1 => NanumSquareRound.copyWith(
      fontWeight: FontWeight.normal, fontSize: FontSizes.s16, height: 1.71);
  static TextStyle get body2 =>
      body1.copyWith(fontSize: FontSizes.s14, height: 1.5, letterSpacing: .2);
  static TextStyle get body3 => body1.copyWith(
      fontSize: FontSizes.s14, height: 1.5, fontWeight: FontWeight.bold);

  static TextStyle get button => NanumSquareRound.copyWith(
      fontSize: FontSizes.s14,
      letterSpacing: 1.25,
      height: 1.5,
      fontWeight: FontWeight.bold);
  static TextStyle get caption => NanumSquareRound.copyWith(
      fontWeight: FontWeight.w400,
      letterSpacing: .4,
      fontSize: FontSizes.s12,
      height: 1.36);
}
