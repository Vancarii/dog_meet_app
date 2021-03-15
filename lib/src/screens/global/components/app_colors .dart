import 'package:flutter/material.dart';

kBoxShadow() {
  return BoxShadow(
    color: Colors.grey.withOpacity(0.5),
    spreadRadius: 1,
    blurRadius: 1,
    offset: Offset(1, 1), // changes position of shadow
  );
}

class AppColors {
  static const Color colorPrimaryOrange = const Color(0xfffc816a);
  static const Color colorWhite = const Color(0xfffffffff);
  static const Color colorBlack = const Color(0xfff000000);
}
