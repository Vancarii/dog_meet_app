import 'package:dog_meet_app/src/global_components/components/app_colors.dart';
import 'package:dog_meet_app/src/global_components/components/text_styles.dart';
import 'package:flutter/material.dart';

enum nameIsActive {
  pup1,
  pup2,
}

class PupTabBar extends StatefulWidget {
  final Function funcIsPup;

  PupTabBar({this.funcIsPup});

  @override
  _PupTabBarState createState() => _PupTabBarState();
}

class _PupTabBarState extends State<PupTabBar> {
  nameIsActive selectedPup = nameIsActive.pup1;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.start,
      children: [
        InkWell(
          onTap: () {
            setState(() {
              selectedPup = nameIsActive.pup1;
              widget.funcIsPup(selectedPup);
            });
          },
          child: CustomText(
            text: 'ROSY',
            size: 20,
            bold: true,
            color: selectedPup == nameIsActive.pup1
                ? Colors.black87
                : AppColors.colorBlack.withOpacity(0.2),
            alignment: TextAlign.start,
            padding: const EdgeInsets.all(5.0),
          ),
        ),
        InkWell(
          onTap: () {
            setState(() {
              selectedPup = nameIsActive.pup2;
              widget.funcIsPup(selectedPup);
            });
          },
          child: CustomText(
            text: 'MAZE',
            size: 20,
            bold: true,
            color: selectedPup == nameIsActive.pup2
                ? Colors.black87
                : AppColors.colorBlack.withOpacity(0.2),
            alignment: TextAlign.start,
            padding: const EdgeInsets.all(5.0),
          ),
        ),
      ],
    );
  }
}
