import 'package:dog_meet_app/src/global_components/themes/app_colors.dart';
import 'package:dog_meet_app/src/global_components/widgets/text_styles.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  static const String id = 'splash_screen';

  const SplashScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Container(
          color: AppColors.colorWhite,
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/logos/doglogo.png'),
                  ),
                ),
              ),
              CustomText(
                text: 'MOOMOO',
                size: 26,
                bold: true,
              ),
              CircularProgressIndicator(),
            ],
          ),
        ),
      ),
    );
  }
}
