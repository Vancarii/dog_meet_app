import 'package:flutter/material.dart';
import 'package:dog_meet_app/src/global_components/route_transitions/route_transitions.dart';
import 'package:dog_meet_app/src/global_components/themes/app_colors.dart';
import 'package:dog_meet_app/src/global_components/widgets/text_styles.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/meetup/meet/components/post/components/info_tiles.dart';
import 'package:flutter/foundation.dart';
import 'package:introduction_screen/introduction_screen.dart';

import 'authentication/auth_screen.dart';

class IntroScreen2 extends StatefulWidget {
  static const String id = 'intro_screen2';

  const IntroScreen2({Key key}) : super(key: key);

  @override
  _IntroScreen2State createState() => _IntroScreen2State();
}

class _IntroScreen2State extends State<IntroScreen2> {
  void _onIntroEnd(context) {
    Navigator.push(
      context,
      RouteTransitions().slideRightToLeftJoinedTransitionType(IntroScreen2(), AuthScreen()),
    );
  }

  Widget _buildImage(String assetName, [double width = 350]) {
    return Image.asset('assets/images/logos/$assetName', width: width);
  }

  @override
  Widget build(BuildContext context) {
    const pageDecoration = const PageDecoration(
      bodyAlignment: Alignment.centerLeft,
      pageColor: Colors.transparent,
      imagePadding: EdgeInsets.only(top: 65.0, left: 25.0, right: 65.0, bottom: 20.0),
    );

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Colors.transparent,
        elevation: 0,
        brightness: Brightness.light,
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: AppColors.orangeYellowBLTRGradient,
            ),
          ),
          SafeArea(
            child: IntroductionScreen(
              //key: introKey,
              globalBackgroundColor: Colors.transparent,
              globalHeader: Align(
                alignment: Alignment.topLeft,
                child: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 16, left: 16),
                    child: CustomText(
                      text: 'DOGGOD',
                      bold: true,
                      size: 20,
                      color: AppColors.colorWhite,
                    ),
                  ),
                ),
              ),
              pages: [
                PageViewModel(
                  reverse: true,
                  title: 'WELCOME',
                  /*titleWidget: CustomText(
                      text: 'WELCOME!',
                      size: 35,
                      bold: true,
                      color: AppColors.colorDarkSlateGrey),*/
                  bodyWidget: CustomText(
                      text: 'Bringing pups and owners together in controlled environments',
                      size: 20,
                      alignment: TextAlign.start),
                  image: _buildImage('doglogo.png'),
                  decoration: pageDecoration,
                ),
                PageViewModel(
                  titleWidget: CustomText(
                      text: 'Meet Ups', size: 35, bold: true, color: AppColors.colorDarkSlateGrey),
                  bodyWidget: Column(
                    children: [
                      Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          CustomText(
                            text: 'Set Up ',
                            size: 18,
                          ),
                          InfoTiles(
                            tileText: 'PLAYDATES',
                            tileColor: AppColors.colorPrimaryOrange,
                          ),
                          CustomText(
                            text: ', or meet for ',
                            size: 18,
                          ),
                          InfoTiles(
                            tileText: 'SOCIALIZATION',
                            tileColor: AppColors.colorPrimaryOrange,
                          ),
                          CustomText(
                            text: ' or ',
                            size: 18,
                          ),
                          InfoTiles(
                            tileText: 'TRAINING',
                            tileColor: AppColors.colorPrimaryOrange,
                          ),
                          CustomText(
                            text: ' with nearby pups and people!',
                            size: 18,
                          ),
                        ],
                      ),
                    ],
                  ),
                  image: _buildImage('doglogo.png'),
                  decoration: pageDecoration,
                ),
                PageViewModel(
                  titleWidget: CustomText(
                      text: 'Market Place',
                      size: 35,
                      bold: true,
                      color: AppColors.colorDarkSlateGrey),
                  bodyWidget: CustomText(
                      text: 'Bringing pups and owners together in controlled environments',
                      size: 20,
                      alignment: TextAlign.center),
                  image: _buildImage('doglogo.png'),
                  decoration: pageDecoration,
                ),
              ],
              onDone: () => _onIntroEnd(context),
              //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
              showSkipButton: true,
              skipFlex: 0,
              nextFlex: 0,
              //rtl: true, // Display as right-to-left
              skip: CustomText(
                text: 'Skip',
                bold: true,
              ),
              next: const Icon(
                Icons.arrow_forward,
              ),
              done: CustomText(
                text: 'Next',
                bold: true,
              ),
              color: AppColors.colorOffBlack,
              curve: Curves.fastLinearToSlowEaseIn,
              controlsMargin: const EdgeInsets.all(16),
              controlsPadding: kIsWeb
                  ? const EdgeInsets.all(12.0)
                  : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
              dotsDecorator: const DotsDecorator(
                activeColor: AppColors.colorDarkSlateGrey,
                size: Size(10.0, 10.0),
                color: Colors.black12,
                activeSize: Size(22.0, 10.0),
                activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25.0)),
                ),
              ),
              dotsContainerDecorator: const ShapeDecoration(
                color: Colors.black12,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
