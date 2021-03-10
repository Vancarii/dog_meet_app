import 'package:flutter/material.dart';

kBoxShadow() {
  return BoxShadow(
    color: Colors.grey.withOpacity(0.5),
    spreadRadius: 2,
    blurRadius: 2,
    offset: Offset(-2, 2), // changes position of shadow
  );
}

kPrimaryColour() {
  return Color(0xfffc816a);
}

kColourWhite() {
  return Color(0xffffffff);
}
