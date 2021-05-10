import 'package:dog_meet_app/src/global_components/components/app_colors.dart';
import 'package:dog_meet_app/src/global_components/components/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pattern_formatter/numeric_formatter.dart';

class ListingPriceTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10.0),
      width: double.infinity,
      //height: 100,
      margin: const EdgeInsets.symmetric(vertical: 5.0),
      decoration: BoxDecoration(
        //color: AppColors.colorGrey.withOpacity(0.5),
        border: Border.all(color: Theme.of(context).primaryColorLight.withOpacity(0.5)),
        borderRadius: BorderRadius.all(
          Radius.circular(15.0),
        ),
      ),
      child: TextField(
        scrollPhysics: NeverScrollableScrollPhysics(),
        maxLength: 9,
        maxLengthEnforcement: MaxLengthEnforcement.truncateAfterCompositionEnds,
        keyboardType: TextInputType.number,
        textAlignVertical: TextAlignVertical.top,
        textCapitalization: TextCapitalization.sentences,
        cursorColor: AppColors.colorPrimaryOrange,
        cursorRadius: Radius.circular(15),
        inputFormatters: [
          ThousandsFormatter(),
          FilteringTextInputFormatter.deny(RegExp('[.]')),
          FilteringTextInputFormatter.deny(RegExp('[-]')),
        ],
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          fontFamily: 'Gibson',
        ),
        decoration: InputDecoration(
            //contentPadding: const EdgeInsets.only(bottom: 5.0),
            prefixIcon: Padding(
              padding: const EdgeInsets.only(right: 5.0),
              child: CustomText(
                text: '\$',
                size: 18,
                bold: true,
                color: AppColors.colorGrey,
              ),
            ),
            prefixIconConstraints: BoxConstraints(minWidth: 0, minHeight: 0),
            counterText: '',
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            hintText: 'Price...',
            hintStyle: TextStyle(
              color: Theme.of(context).primaryColorLight.withOpacity(0.4),
              fontFamily: 'Gibson',
            )),
      ),
    );
  }
}
