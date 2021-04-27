import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'app_colors.dart';

class CustomRoundedTextField extends StatelessWidget {
  final int maxLines;
  final int minLines;
  final EdgeInsetsGeometry padding;
  final String labelText;
  final IconButton endIcon;
  final TextInputType keyboard;
  final Color borderColor;

  const CustomRoundedTextField({
    Key key,
    this.maxLines = 1,
    this.minLines,
    this.padding = const EdgeInsets.all(0.0),
    this.labelText,
    this.endIcon,
    this.keyboard = TextInputType.multiline,
    this.borderColor = AppColors.colorWhite,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: TextFormField(
        maxLines: maxLines,
        minLines: minLines,
        keyboardType: keyboard,
        textCapitalization: TextCapitalization.sentences,
        maxLengthEnforcement: MaxLengthEnforcement.truncateAfterCompositionEnds,
        decoration: new InputDecoration(
          fillColor: AppColors.colorGrey.withOpacity(0.2),
          filled: true,
          contentPadding: EdgeInsets.only(left: 15, bottom: 15),
          alignLabelWithHint: true,
          floatingLabelBehavior: FloatingLabelBehavior.never,
          labelText: labelText,
          suffixIcon: endIcon,
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: borderColor,
              ),
              borderRadius: BorderRadius.circular(30.0)),
          border: OutlineInputBorder(
              borderSide: BorderSide(
                color: borderColor,
              ),
              borderRadius: BorderRadius.circular(30.0)),
        ),
      ),
    );
  }
}
