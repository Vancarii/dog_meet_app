import 'package:dog_meet_app/src/global_components/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ColorPicker extends StatefulWidget {
  final Function colorChanged;
  final bool reset;

  ColorPicker({this.colorChanged, this.reset});
  @override
  _ColorPickerState createState() => _ColorPickerState();
}

class _ColorPickerState extends State<ColorPicker> {
  static const List<Color> _defaultColors = [
    Colors.red,
    Colors.pink,
    Colors.purple,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.orange,
    Colors.brown,
    Colors.grey,
    Colors.black,
  ];

  int selectedColor;

  @override
  Widget build(BuildContext context) {
    if (widget.reset == true) {
      selectedColor = null;
    }
    return Container(
      width: double.infinity,
      height: 100,
      child: Wrap(
        children: [
          for (var index = 0; index < _defaultColors.length; index++)
            Container(
              margin: const EdgeInsets.all(2.0),
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _defaultColors[index],
              ),
              child: FittedBox(
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      if (selectedColor != index) {
                        selectedColor = index;
                        widget.colorChanged(true);
                      } else {
                        widget.colorChanged(false);
                        selectedColor = null;
                      }

                      //selectedColor != index ? selectedColor = index : selectedColor = null;
                    });
                  },
                  icon: Visibility(
                    visible: selectedColor == index ? true : false,
                    child: Icon(
                      Icons.check_rounded,
                      color: AppColors.colorWhite,
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
