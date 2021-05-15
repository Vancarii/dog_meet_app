import 'package:dog_meet_app/src/global_components/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ListingDescriptionTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10.0),
      width: double.infinity,
      height: 100,
      margin: const EdgeInsets.symmetric(vertical: 5.0),
      decoration: BoxDecoration(
        //color: AppColors.colorGrey.withOpacity(0.5),
        border: Border.all(color: Theme.of(context).primaryColorLight.withOpacity(0.5)),
        borderRadius: BorderRadius.all(
          Radius.circular(15.0),
        ),
      ),
      child: TextField(
        maxLines: null,
        maxLengthEnforcement: MaxLengthEnforcement.truncateAfterCompositionEnds,
        keyboardType: TextInputType.multiline,
        textAlignVertical: TextAlignVertical.top,
        textCapitalization: TextCapitalization.sentences,
        cursorColor: AppColors.colorPrimaryOrange,
        cursorRadius: Radius.circular(15),
        style: TextStyle(
          fontSize: 16,
          //fontWeight: FontWeight.w600,
          fontFamily: 'Gibson',
        ),
        decoration: InputDecoration(
          //counterText: '',
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          hintText: 'Description...',
          hintStyle: TextStyle(
            color: Theme.of(context).primaryColorLight.withOpacity(0.4),
            fontFamily: 'Gibson',
          ),
        ),
      ),
    );
  }
}
