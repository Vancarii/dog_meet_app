import 'package:dog_meet_app/src/global_components/components/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ForumTitleTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: TextField(
              scrollPhysics: NeverScrollableScrollPhysics(),
              minLines: 1,
              maxLines: 10,
              maxLength: 200,
              maxLengthEnforcement: MaxLengthEnforcement.enforced,
              keyboardType: TextInputType.text,
              textAlignVertical: TextAlignVertical.center,
              textCapitalization: TextCapitalization.sentences,
              cursorColor: AppColors.colorPrimaryOrange,
              cursorRadius: Radius.circular(15),
              style: TextStyle(
                  fontSize: 26,
                  color: AppColors.colorBlack,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Gibson'),
              decoration: InputDecoration(
                  counterText: '',
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  hintText: 'Post Title...',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  )),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              FontAwesomeIcons.palette,
            ),
          ),
        ],
      ),
    );
  }
}
