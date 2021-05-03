import 'package:dog_meet_app/src/global_components/components/app_colors.dart';
import 'package:flutter/material.dart';

class MarketPriceRangeSlider extends StatefulWidget {
  final Function onStart;
  final Function onEnd;
  final bool reset;
  final Function onChanged;

  MarketPriceRangeSlider({
    @required this.onEnd,
    @required this.onStart,
    this.reset,
    this.onChanged,
  });
  @override
  _MarketPriceRangeSliderState createState() => _MarketPriceRangeSliderState();
}

class _MarketPriceRangeSliderState extends State<MarketPriceRangeSlider> {
  RangeValues _currentRangeValues = RangeValues(0, 500);

  @override
  Widget build(BuildContext context) {
    if (widget.reset == true) {
      _currentRangeValues = RangeValues(0, 500);
    }
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: RangeSlider(
        activeColor: AppColors.colorDarkSlateGrey,
        inactiveColor: AppColors.colorLightCoral,
        min: 0,
        max: 500,
        divisions: 500,
        values: _currentRangeValues,
        /*labels: RangeLabels(
          _currentRangeValues.start.round() == 0
              ? 'free'
              : '\$ ' + _currentRangeValues.start.round().toString(),
          _currentRangeValues.end.round() == 500
              ? '\$ ' + _currentRangeValues.end.round().toString() + '+'
              : '\$ ' + _currentRangeValues.end.round().toString(),
        ),*/
        onChangeStart: widget.onStart,
        onChanged: (values) {
          setState(() {
            _currentRangeValues = values;
            widget.onChanged(values);
          });
        },
        onChangeEnd: widget.onEnd,
      ),
    );
  }
}
