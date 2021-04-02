import 'package:flutter/material.dart';

class CreateAccountTextfield extends StatefulWidget {
  final BorderRadius cornerRadius;
  final double? width, height, wordSpacing;
  final Color? backgroundColor, accentColor, textColor, suffixColor;
  final String placeholder, fontFamily;
  final Icon? prefixIcon, suffixIcon;
  final TextInputType inputType;
  final EdgeInsets margin;
  final Duration duration;
  final VoidCallback? onClickSuffix;
  final TextBaseline? textBaseline;
  final FontStyle? fontStyle;
  final FontWeight fontWeight;
  final bool autofocus, autocorrect, enabled, obscureText, isShadow;
  final FocusNode? focusNode;
  final int? maxLength, minLines, maxLines;
  final ValueChanged<String>? onChanged, onSubmitted;
  final GestureTapCallback? onTap;
  final TextEditingController? controller;

  const CreateAccountTextfield(
      {required double this.width,
      required double this.height,
      this.inputType = TextInputType.text,
      this.prefixIcon,
      this.controller,
      this.suffixIcon,
      this.suffixColor,
      this.duration = const Duration(milliseconds: 500),
      this.margin = const EdgeInsets.all(10),
      this.obscureText = false,
      this.backgroundColor = Colors.white,
      this.cornerRadius = const BorderRadius.all(Radius.circular(5)),
      this.textColor = Colors.black,
      this.accentColor = const Color(0xfffc816a),
      this.placeholder = "Placeholder",
      this.isShadow = true,
      this.onClickSuffix,
      this.wordSpacing,
      this.textBaseline,
      this.fontFamily = 'Gibson Semi Bold',
      this.fontStyle,
      this.fontWeight = FontWeight.w200,
      this.autofocus = false,
      this.autocorrect = false,
      this.focusNode,
      this.enabled = true,
      this.maxLength,
      this.maxLines = 1,
      this.minLines,
      this.onChanged,
      this.onTap,
      this.onSubmitted});

  @override
  _BeautyTextfieldState createState() => _BeautyTextfieldState();
}

class _BeautyTextfieldState extends State<CreateAccountTextfield> {
  bool isFocus = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      margin: widget.margin,
      alignment: Alignment.centerRight,
      decoration: BoxDecoration(
          boxShadow: widget.isShadow
              ? [
                  BoxShadow(
                      color: Colors.grey[400]!,
                      blurRadius: 2,
                      spreadRadius: 0.5,
                      offset: Offset(-1, 3))
                ]
              : [BoxShadow(color: Color(0xfffc816a), spreadRadius: 0, blurRadius: 0)],
          borderRadius: widget.cornerRadius,
          color: widget.backgroundColor),
      child: Stack(
        children: <Widget>[
          widget.suffixIcon == null
              ? Container()
              : GestureDetector(
                  onTap: () {},
                  child: Container(
                    margin: EdgeInsets.only(right: 10),
                    alignment: Alignment.centerRight,
                    child: Icon(
                      widget.suffixIcon!.icon,
                      color: widget.suffixColor,
                    ),
                  ),
                ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  flex: 5,
                  child: Container(
                    margin: EdgeInsets.only(left: 10, right: 50),
                    child: TextField(
                      controller: widget.controller,
                      cursorWidth: 2,
                      obscureText: widget.obscureText,
                      keyboardType: widget.inputType,
                      style: TextStyle(
                        fontFamily: widget.fontFamily,
                        fontStyle: widget.fontStyle,
                        fontWeight: widget.fontWeight,
                        wordSpacing: widget.wordSpacing,
                        textBaseline: widget.textBaseline,
                        fontSize: 15,
                        letterSpacing: 2,
                        color: widget.textColor,
                      ),
                      autofocus: widget.autofocus,
                      autocorrect: widget.autocorrect,
                      focusNode: widget.focusNode,
                      enabled: widget.enabled,
                      maxLength: widget.maxLength,
                      maxLines: widget.maxLines,
                      minLines: widget.minLines,
                      onChanged: widget.onChanged,
                      onTap: () {
                        setState(() {
                          isFocus = true;
                        });
                        if (widget.onTap != null) {
                          widget.onTap!();
                        }
                      },
                      onSubmitted: (t) {
                        setState(() {
                          isFocus = false;
                        });
                        widget.onSubmitted!(t);
                      },
                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration(
                          hintStyle: TextStyle(color: Colors.grey[400]),
                          hintText: widget.placeholder,
                          border: InputBorder.none),
                      cursorColor: isFocus ? widget.accentColor : widget.backgroundColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      //duration: widget.duration,
    );
  }
}
