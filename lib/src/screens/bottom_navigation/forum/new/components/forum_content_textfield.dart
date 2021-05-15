import 'package:dog_meet_app/src/global_components/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ForumContentTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        maxLines: null,
        maxLengthEnforcement: MaxLengthEnforcement.enforced,
        keyboardType: TextInputType.multiline,
        textAlignVertical: TextAlignVertical.center,
        textCapitalization: TextCapitalization.sentences,
        cursorColor: AppColors.colorPrimaryOrange,
        cursorRadius: Radius.circular(15),
        style: TextStyle(
            fontSize: 16,
            color: Theme.of(context).primaryColorLight,
            //fontWeight: FontWeight.w600,
            fontFamily: 'Gibson'),
        decoration: InputDecoration(
            //counterText: '',
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            hintText: 'Enter your text here...',
            hintStyle: TextStyle(
              color: Colors.grey,
            )),
      ),
    );
  }
}
