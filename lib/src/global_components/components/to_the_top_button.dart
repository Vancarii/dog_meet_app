import 'package:dog_meet_app/src/global_components/components/text_styles.dart';
import 'package:flutter/material.dart';

ActionChip toTheTop() {
  return ActionChip(
      backgroundColor: Colors.white,
      elevation: 5,
      label: CustomText(
        text: 'TO THE TOP',
        size: 12,
        alignment: TextAlign.center,
      ),

      /*gibsonSemiBoldText(
          'TO THE TOP!', 0, 0, 0, 0, 12, Colors.black, TextAlign.center),*/
      onPressed: () {});
}
