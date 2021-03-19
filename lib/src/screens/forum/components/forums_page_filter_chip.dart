import 'package:dog_meet_app/src/screens/global/components/app_colors.dart';
import 'package:dog_meet_app/src/screens/global/components/text_styles.dart';
import 'package:flutter/material.dart';

bool boolChipSelected = false;

class ForumsPageFilterChip extends StatefulWidget {
  final String topicText;

  const ForumsPageFilterChip({
    this.topicText,
  });

  @override
  _ForumsPageFilterChipState createState() => _ForumsPageFilterChipState();
}

class _ForumsPageFilterChipState extends State<ForumsPageFilterChip> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 2.0, bottom: 2.0, left: 5.0, right: 5.0),
      child: FilterChip(
        pressElevation: 0,
        elevation: 3,
        backgroundColor: Colors.white,
        label: CustomText(
          text: widget.topicText,
          size: 12,
          bold: true,
          alignment: TextAlign.center,
        ),

        /*gibsonSemiBoldText(
            widget.topicText, 0, 0, 0, 0, 12, Colors.black, TextAlign.center),*/
        onSelected: (bool value) {
          setState(() {
            print(value);
            return boolChipSelected = value;
          });
        },
        selected: boolChipSelected,
        selectedColor: AppColors.colorPrimaryOrange,
        showCheckmark: false,
      ),
    );
  }
}
