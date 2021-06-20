import 'package:dog_meet_app/src/global_components/themes/app_colors.dart';
import 'package:dog_meet_app/src/global_components/widgets/text_styles.dart';
import 'package:flutter/material.dart';

class InfoTiles extends StatelessWidget {
  final String tileText;
  final IconData tileIcon;
  final Color tileColor;
  final BoxBorder border;

  InfoTiles({
    this.tileText,
    this.tileColor = AppColors.colorWhite,
    this.tileIcon,
    this.border,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 35,
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            decoration: BoxDecoration(
              color: tileColor,
              border: border,
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: tileText != null
                ? CustomText(
                    text: tileText,
                    size: 15,
                    bold: true,
                    color: AppColors.colorBlack,
                  )
                : Icon(
                    tileIcon,
                    size: 20,
                    color: AppColors.colorBlack,
                  ),
          ),
        ],
      ),
    );
  }
}
