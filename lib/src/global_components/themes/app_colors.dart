import 'package:flutter/material.dart';

class AppColors {
  static const Gradient orangeYellowGradient = const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.topRight,
      colors: [
        AppColors.colorOrange,
        AppColors.colorPrimaryYellow,
      ]);

  static const Gradient darkFadeGradient = const LinearGradient(
      begin: Alignment.center,
      end: Alignment.bottomCenter,
      colors: [
        Colors.black45,
        Colors.black,
      ]);

  static const Gradient lightFadeGradient = const LinearGradient(
      begin: Alignment.center,
      end: Alignment.bottomCenter,
      colors: [
        Colors.white54,
        Colors.white,
      ]);

  static const Color colorOrange = const Color(0xfffc816a);

  static const Color colorDarkSalmon = const Color(0xffff1907f);
  static const Color colorLightCoral = const Color(0xffff1907f);
  static const Color colorDarkSlateGrey = const Color(0xfff285264);
  static const Color colorBrightGreen = const Color(0xfff13d9b4);
  static const Color colorGreen = const Color(0xfff81C784);
  static const MaterialAccentColor colorRed = Colors.redAccent;

  static const Color colorPrimaryOrange = const Color(0xfffFC846A);
  static const Color colorPrimaryYellow = const Color(0xfffffc371);
  static const Color colorWhite = const Color(0xfffffffff);
  static const Color colorBlack = const Color(0xfff000000);
  static const Color colorOffBlack = const Color(4281348144);
  static const MaterialColor colorGrey = Colors.grey;
}
