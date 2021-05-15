import 'package:dog_meet_app/src/global_components/themes/app_colors.dart';
import 'package:dog_meet_app/src/global_components/widgets/text_styles.dart';
import 'package:flutter/material.dart';

enum nameIsActive {
  pup1,
  pup2,
}

class OtherPupTabBar extends StatefulWidget {
  final Function funcIsPup;
  final EdgeInsetsGeometry padding;

  OtherPupTabBar({
    this.funcIsPup,
    this.padding = const EdgeInsets.only(top: 20.0, left: 10.0),
  });

  @override
  _OtherPupTabBarState createState() => _OtherPupTabBarState();
}

class _OtherPupTabBarState extends State<OtherPupTabBar> {
  nameIsActive selectedPup = nameIsActive.pup1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
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
      ),
    );
  }
}
