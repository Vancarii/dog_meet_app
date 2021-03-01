import 'package:flutter/material.dart';
import 'package:dogmeet_app/components/ui/text_styles.dart';

ActionChip toTheTop() {
  return ActionChip(backgroundColor: Colors.white, elevation: 5, label: gibsonSemiBoldText('TO THE TOP!', 0, 0, 0, 0, 12, Colors.black, TextAlign.center), onPressed: () {});
}
