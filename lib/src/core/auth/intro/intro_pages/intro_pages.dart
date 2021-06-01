import 'package:dog_meet_app/src/global_components/themes/app_colors.dart';
import 'package:dog_meet_app/src/global_components/widgets/text_styles.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/meetup/meet/components/post/components/info_tiles.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class Intro1 extends StatelessWidget {
  const Intro1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 100.0, left: 25.0),
        child: RichText(
          text: TextSpan(
              text: 'WELCOME',
              style: TextStyle(
                fontFamily: 'Gibson',
                fontWeight: FontWeight.w600,
                fontSize: 50,
              ),
              children: [
                TextSpan(
                  text: ' to a place where dogs and people come together safely',
                  style: TextStyle(
                    color: AppColors.colorDarkSlateGrey,
                    fontFamily: 'Gibson',
                    fontWeight: FontWeight.w400,
                    fontSize: 22,
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}

class Intro2 extends StatelessWidget {
  const Intro2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.only(left: 25.0, top: 150.0),
        alignment: Alignment.topLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: 'Meet Ups',
              color: AppColors.colorDarkSlateGrey,
              size: 36,
              bold: true,
            ),
            SizedBox(
              height: 25.0,
            ),
            CustomText(
              text: 'Make posts to meet up with a variety of dogs and people for ',
              color: AppColors.colorOffBlack,
              size: 20,
              height: 1.5,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 5.0),
              child: InfoTiles(
                tileColor: AppColors.colorPrimaryOrange,
                tileText: 'PLAYDATE',
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: InfoTiles(
                tileColor: AppColors.colorPrimaryOrange,
                tileText: 'SOCIALIZATION',
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: InfoTiles(
                tileColor: AppColors.colorPrimaryOrange,
                tileText: 'TRAINING',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Intro3 extends StatelessWidget {
  const Intro3({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      padding: const EdgeInsets.only(left: 25.0, top: 150.0),
      alignment: Alignment.topLeft,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        CustomText(
          text: 'Market Place',
          color: AppColors.colorDarkSlateGrey,
          size: 36,
          bold: true,
        ),
        SizedBox(
          height: 25.0,
        ),
        CustomText(
          text: 'Sell your used products or Buy new ones from shops',
          color: AppColors.colorOffBlack,
          size: 20,
          bold: false,
          height: 1.5,
        ),
      ]),
    ));
  }
}

class Intro4 extends StatelessWidget {
  const Intro4({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      padding: const EdgeInsets.only(left: 25.0, top: 150.0),
      alignment: Alignment.topLeft,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        CustomText(
          text: 'Forum',
          color: AppColors.colorDarkSlateGrey,
          size: 36,
          bold: true,
        ),
        SizedBox(
          height: 25.0,
        ),
        CustomText(
          text:
              'Discuss, Share, and Learn from each other to help improve your relationship with your pup',
          color: AppColors.colorOffBlack,
          size: 20,
          bold: false,
          height: 1.5,
        ),
      ]),
    ));
  }
}
