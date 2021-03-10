import 'package:dogmeet_app/src/screens/global/components/text_styles.dart';
import 'package:flutter/material.dart';

ActionChip toTheTop() {
  return ActionChip(
      backgroundColor: Colors.white,
      elevation: 5,
      label: gibsonSemiBoldText(
          'TO THE TOP!', 0, 0, 0, 0, 12, Colors.black, TextAlign.center),
      onPressed: () {});
}
