import 'package:dog_meet_app/src/global_components/components/app_colors.dart';
import 'package:dog_meet_app/src/global_components/components/text_styles.dart';
import 'package:dog_meet_app/src/global_components/constants.dart';
import 'package:flutter/material.dart';

class AddMediaButtons extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTapCallback;

  AddMediaButtons({this.title, this.icon, @required this.onTapCallback});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RawMaterialButton(
        onPressed: onTapCallback,
        child: Container(
          alignment: Alignment.center,
          height: 35,
          margin: const EdgeInsets.only(top: 5.0, left: 2.0, right: 2.0, bottom: 2.0),
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: AppColors.colorWhite,
            boxShadow: [
              kBoxShadow(),
            ],
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
          ),
          child: FittedBox(
            fit: BoxFit.fitWidth,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  icon,
                  size: 15,
                ),
                CustomText(
                  text: title,
                  size: 15,
                  bold: true,
                  padding: const EdgeInsets.only(left: 5.0),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
