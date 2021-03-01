import 'package:flutter/material.dart';

Padding gibsonSemiBoldText(String text, double topInset, double bottomInset, double leftInset, double rightInset, double fontSize, Color color, TextAlign textAlign) {
  return Padding(
    padding: EdgeInsets.only(top: topInset, bottom: bottomInset, left: leftInset, right: rightInset),
    child: Text(
      '$text',
      textAlign: textAlign,
      style: TextStyle(
        color: color,
        fontFamily: 'Gibson Semi Bold',
        fontSize: fontSize,
      ),
    ),
  );
}
