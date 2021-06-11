import 'package:animations/animations.dart';
import 'package:dog_meet_app/src/core/auth/intro/authentication/components/auth_card.dart';
import 'package:dog_meet_app/src/core/auth/intro/authentication/auth_screen.dart';
import 'package:dog_meet_app/src/core/auth/intro/intro_screen.dart';
import 'package:dog_meet_app/src/global_components/constants/constants.dart';
import 'package:dog_meet_app/src/global_components/route_transitions/route_transitions.dart';
import 'package:dog_meet_app/src/global_components/themes/app_colors.dart';
import 'package:dog_meet_app/src/global_components/widgets/text_styles.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/bnb/main_bottom_nav_menu.dart';
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

class Intro5 extends StatelessWidget {
  const Intro5({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 150.0, bottom: 50.0),
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomText(
            text: 'Welcome',
            color: AppColors.colorDarkSlateGrey,
            size: 40,
            bold: true,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50.0, bottom: 10.0),
            child: OpenContainer(
              closedColor: Colors.transparent,
              closedElevation: 0,
              openElevation: 0,
              openColor: Colors.transparent,
              middleColor: AppColors.colorDarkSlateGrey,
              closedBuilder: (context, function) {
                return Container(
                  width: 200,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    boxShadow: [kBoxShadow()],
                    color: AppColors.colorDarkSlateGrey,
                  ),
                  child: CustomText(
                    text: 'Get Started!',
                    size: 18,
                    color: AppColors.colorWhite,
                  ),
                );
              },
              openBuilder: (context, function) {
                return AuthScreen();
              },
            ),
          ),
        ],
      ),
    ));
  }
}

Widget otherSignUpMethods({String text, String imagePath, Color backgroundColor}) {
  return Padding(
    padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
    child: InkWell(
      onTap: () {},
      child: Container(
        width: double.infinity,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
          boxShadow: [kBoxShadow()],
          color: backgroundColor,
        ),
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                height: 30,
                width: 30,
                margin: const EdgeInsets.symmetric(horizontal: 10.0),
                padding: const EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  color: AppColors.colorWhite,
                  shape: BoxShape.circle,
                ),
                child: Image(
                  image: AssetImage(imagePath),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: CustomText(
                text: text,
                size: 18,
                color: AppColors.colorWhite,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
