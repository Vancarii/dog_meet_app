import 'package:dogmeet_app/components/ui/constants.dart';
import 'package:flutter/material.dart';
import '../ui/text_styles.dart';

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
      padding: const EdgeInsets.all(2.0),
      child: FilterChip(
        pressElevation: 0,
        elevation: 10,
        backgroundColor: Colors.white,
        label: gibsonSemiBoldText(
            widget.topicText, 0, 0, 0, 0, 12, Colors.black, TextAlign.center),
        onSelected: (bool value) {
          setState(() {
            print(value);
            return boolChipSelected = value;
          });
        },
        selected: boolChipSelected,
        selectedColor: kPrimaryColour(),
        showCheckmark: false,
      ),
    );
  }
}
