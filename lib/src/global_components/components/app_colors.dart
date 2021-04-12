import 'package:flutter/material.dart';

kBoxShadow() {
  return BoxShadow(
    color: Colors.black26,
    spreadRadius: 1,
    blurRadius: 1,
    offset: Offset(1, 1), // changes position of shadow
  );
}

class AppColors {
  static const Gradient orangeYellowGradient =
      const LinearGradient(begin: Alignment.bottomLeft, end: Alignment.topRight, colors: [
    AppColors.colorOrange,
    AppColors.colorPrimaryYellow,
  ]);

  static const Color colorOrange = const Color(0xfffc816a);

  static const Color colorDarkSalmon = const Color(0xffff1907f);
  static const Color colorLightCoral = const Color(0xffff1907f);
  static const Color colorDarkSlateGrey = const Color(0xfff285264);

  static const Color colorPrimaryOrange = const Color(0xfffFC846A);
  static const Color colorPrimaryYellow = const Color(0xfffffc371);
  static const Color colorWhite = const Color(0xfffffffff);
  static const Color colorBlack = const Color(0xfff000000);
  static const MaterialColor colorGrey = Colors.grey;
}
