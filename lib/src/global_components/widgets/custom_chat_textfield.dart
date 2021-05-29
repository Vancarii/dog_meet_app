import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../themes/app_colors.dart';

class CustomRoundedTextField extends StatelessWidget {
  final int maxLines;
  final int minLines;
  final EdgeInsetsGeometry padding;
  final String labelText;
  final IconButton endIcon;
  final TextInputType keyboard;
  final Color borderColor;
  final TextEditingController controller;
  final Function(String) onTextChanged;

  const CustomRoundedTextField({
    Key key,
    this.maxLines = 1,
    this.minLines,
    this.padding = const EdgeInsets.all(0.0),
    this.labelText,
    this.endIcon,
    this.keyboard = TextInputType.multiline,
    this.borderColor = AppColors.colorWhite,
    this.controller,
    this.onTextChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: TextFormField(
        onChanged: onTextChanged,
        controller: controller,
        maxLines: maxLines,
        minLines: minLines,
        keyboardType: keyboard,
        cursorColor: AppColors.colorPrimaryOrange,
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
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).accentColor,
            ),
            borderRadius: BorderRadius.circular(30.0),
          ),
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
