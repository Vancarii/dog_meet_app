import 'package:dog_meet_app/src/screens/global/components/app_colors.dart';
import 'package:dog_meet_app/src/screens/global/components/text_styles.dart';
import 'package:flutter/material.dart';

class NewListingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: CustomText(
          text: 'New listing',
          size: 18,
          bold: true,
          //alignment: TextAlign.center,
        ),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.close_rounded),
        ),
        actions: <Widget>[
          Center(
            child: GestureDetector(
              child: CustomText(
                text: 'Post',
                size: 18,
                color: AppColors.colorPrimaryOrange,
                bold: true,
                alignment: TextAlign.center,
                padding: const EdgeInsets.only(right: 10.0),
              ),
              onTap: () {},
            ),
          ),
        ],
      ),
      body: Container(),
    );
  }
}