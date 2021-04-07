import 'package:dog_meet_app/src/global_components/components/text_styles.dart';
import 'package:flutter/material.dart';

class ProductPosterAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5, top: 20),
      child: Row(
        children: <Widget>[
          CircleAvatar(),
          CustomText(
            text: 'Account Name',
            size: 15,
            bold: true,
            alignment: TextAlign.start,
            padding: const EdgeInsets.only(left: 5.0),
          ),
          /*Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: Text(
              'Account Name',
              style: AppTextStyles.h15BlackBold,
              textAlign: TextAlign.start,
            ),
          ),*/
        ],
      ),
    );
  }
}
