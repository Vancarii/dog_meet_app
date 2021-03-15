import 'package:dog_meet_app/src/screens/global/components/text_styles.dart';
import 'package:flutter/material.dart';

class MarketProductTagsChips extends StatefulWidget {
  final String tagWord;

  const MarketProductTagsChips({
    this.tagWord,
  });

  @override
  _MarketProductTagsChipsState createState() => _MarketProductTagsChipsState();
}

class _MarketProductTagsChipsState extends State<MarketProductTagsChips> {
  @override
  Widget build(BuildContext context) {
    return FilterChip(
      pressElevation: 0,
      backgroundColor: Colors.black12,
      label: CustomText(
        text: widget.tagWord,
        alignment: TextAlign.center,
        size: 12,
        bold: true,
      ),

      /*gibsonSemiBoldText(
          widget.tagWord, 0, 0, 0, 0, 12, Colors.black, TextAlign.center),*/
      onSelected: (bool value) {
        setState(() {
          print(value);
        });
      },
      showCheckmark: false,
    );
  }
}
