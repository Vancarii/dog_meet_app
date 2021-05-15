import 'package:dog_meet_app/src/global_components/themes/app_colors.dart';
import 'package:flutter/material.dart';

class AppThemes {
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.colorOffBlack,
    primaryColor: AppColors.colorOffBlack,
    accentColor: AppColors.colorPrimaryOrange,
    backgroundColor: AppColors.colorOffBlack,
    colorScheme: ColorScheme.dark(),
    primaryColorLight: AppColors.colorWhite,
    primaryColorDark: AppColors.colorOffBlack,
    //visualDensity: VisualDensity.adaptivePlatformDensity,
  );

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.colorWhite,
    primaryColor: AppColors.colorWhite,
    accentColor: AppColors.colorPrimaryOrange,
    backgroundColor: AppColors.colorWhite,
    colorScheme: ColorScheme.light(),
    toggleableActiveColor: AppColors.colorOffBlack,
    primaryColorLight: AppColors.colorOffBlack,
    primaryColorDark: AppColors.colorWhite,
    //visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}
