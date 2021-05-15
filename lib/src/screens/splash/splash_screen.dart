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
          color: AppColors.colorOffBlack,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(
                text: 'MIROPUP',
                size: 26,
                color: AppColors.colorPrimaryOrange,
              ),
              CircularProgressIndicator(),
            ],
          ),
        ),
      ),
    );
  }
}
