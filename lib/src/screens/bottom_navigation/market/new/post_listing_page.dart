import 'package:dog_meet_app/src/global_components/components/app_colors.dart';
import 'package:dog_meet_app/src/global_components/components/text_styles.dart';
import 'package:flutter/material.dart';

class PostListingPage extends StatelessWidget {
  static const String id = 'post_listing_page';

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'animated_fab',
      child: Scaffold(
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
      ),
    );
  }
}
