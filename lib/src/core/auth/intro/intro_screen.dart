import 'package:dog_meet_app/src/core/auth/intro/authentication/authentication_screen.dart';
import 'package:dog_meet_app/src/global_components/route_transitions/route_transitions.dart';
import 'package:dog_meet_app/src/global_components/themes/app_colors.dart';
import 'package:dog_meet_app/src/global_components/widgets/text_styles.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/bnb/main_bottom_nav_menu.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class IntroScreen extends StatefulWidget {
  static const String id = 'intro_screen';

  const IntroScreen({Key key}) : super(key: key);

  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  //final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.push(
      context,
      RouteTransitions()
          .slideRightToLeftJoinedTransitionType(IntroScreen(), AuthenticationScreen()),
    );
  }

  Widget _buildImage(String assetName, [double width = 350]) {
    return Image.asset('assets/images/logos/$assetName', width: width);
  }

  @override
  Widget build(BuildContext context) {
    const pageDecoration = const PageDecoration(
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
              gradient: AppColors.orangeYellowGradient,
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
                  titleWidget: CustomText(
                      text: 'WELCOME!', size: 35, bold: true, color: AppColors.colorDarkSlateGrey),
                  bodyWidget: CustomText(
                      text: 'Bringing pups and owners together in controlled environments',
                      size: 20,
                      alignment: TextAlign.center),
                  image: _buildImage('doglogo.png'),
                  decoration: pageDecoration,
                ),
                PageViewModel(
                  titleWidget: CustomText(
                      text: 'WELCOME!', size: 35, bold: true, color: AppColors.colorDarkSlateGrey),
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
