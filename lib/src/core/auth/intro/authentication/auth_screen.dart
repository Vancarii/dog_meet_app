import 'package:dog_meet_app/src/core/auth/intro/authentication/components/auth_card.dart';
import 'package:dog_meet_app/src/global_components/themes/app_colors.dart';
import 'package:dog_meet_app/src/global_components/widgets/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key key}) : super(key: key);

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  double currentSignupStep = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorDarkSlateGrey,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        brightness: Brightness.dark,
        centerTitle: true,
        title: CustomText(
          text: 'DOGGOD',
          size: 18,
          bold: true,
          //padding: const EdgeInsets.symmetric(vertical: 35.0),
          alignment: TextAlign.center,
        ),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_rounded),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AuthCard(),
        ],
      ),
      floatingActionButton: Container(
        margin: const EdgeInsets.all(20.0),
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: Colors.white24,
          borderRadius: BorderRadius.all(
            Radius.circular(30.0),
          ),
        ),
        child: DotsIndicator(
          dotsCount: 3,
          position: currentSignupStep,
          decorator: DotsDecorator(
            color: Colors.black12,
            activeColor: AppColors.colorPrimaryOrange,
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
          ),
        ),
      ),
    );
  }
}
