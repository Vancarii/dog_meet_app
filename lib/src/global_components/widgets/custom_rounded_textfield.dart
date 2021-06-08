import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../themes/app_colors.dart';

class CustomRoundedTextField extends StatelessWidget {
  final FocusNode node;
  final bool password;
  final int maxLines;
  final int minLines;
  final TextInputAction keyboardAction;
  final EdgeInsetsGeometry padding;
  final String labelText;
  final IconButton startIcon;
  final IconButton endIcon;
  final TextInputType keyboard;
  final Color focusIconColor;
  final Color cursorColor;
  final Color borderColor;
  final Color focusedBorderColor;
  final TextEditingController controller;
  final Function(String) onTextChanged;
  final Function(String) onSubmit;

  const CustomRoundedTextField({
    Key key,
    this.node,
    this.password = false,
    this.maxLines = 1,
    this.minLines,
    this.padding = const EdgeInsets.all(0.0),
    this.labelText,
    this.startIcon,
    this.endIcon,
    this.keyboardAction = TextInputAction.done,
    this.keyboard = TextInputType.multiline,
    this.focusIconColor = AppColors.colorPrimaryOrange,
    this.cursorColor = AppColors.colorPrimaryOrange,
    this.focusedBorderColor = AppColors.colorPrimaryOrange,
    this.borderColor = AppColors.colorWhite,
    this.controller,
    this.onTextChanged,
    this.onSubmit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Theme(
        data: Theme.of(context).copyWith(
          accentColor: focusIconColor,
        ),
        child: TextFormField(
          obscureText: password,
          textInputAction: keyboardAction,
          focusNode: node,
          onChanged: onTextChanged,
          controller: controller,
          maxLines: maxLines,
          minLines: minLines,
          keyboardType: keyboard,
          cursorColor: cursorColor,
          textCapitalization: TextCapitalization.sentences,
          maxLengthEnforcement: MaxLengthEnforcement.truncateAfterCompositionEnds,
          onFieldSubmitted: onSubmit,
          decoration: InputDecoration(
            fillColor: AppColors.colorGrey.withOpacity(0.2),
            filled: true,
            contentPadding: EdgeInsets.only(left: 15, bottom: 15),
            alignLabelWithHint: true,
            floatingLabelBehavior: FloatingLabelBehavior.never,
            labelText: labelText,
            prefixIcon: startIcon,
            suffixIcon: endIcon,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: focusedBorderColor,
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
      ),
    );
  }
}
