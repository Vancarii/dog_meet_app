import 'package:dog_meet_app/src/global_components/themes/app_colors.dart';
import 'package:dog_meet_app/src/global_components/widgets/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:dog_meet_app/src/global_components/enums/enums.dart';

class LoginTypeTabBar extends StatefulWidget {
  final Function(bool) isLogin;

  LoginTypeTabBar({this.isLogin});

  @override
  _LoginTypeTabBarState createState() => _LoginTypeTabBarState();
}

class _LoginTypeTabBarState extends State<LoginTypeTabBar> {
  bool loginSelected = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            setState(() {
              loginSelected = true;
              widget.isLogin(loginSelected);
            });
          },
          child: CustomText(
            text: 'LOGIN',
            size: 22,
            bold: true,
            color: loginSelected == true
                ? AppColors.colorPrimaryOrange
                : AppColors.colorPrimaryOrange.withOpacity(0.4),
            alignment: TextAlign.start,
            padding: const EdgeInsets.all(5.0),
          ),
        ),
        InkWell(
          onTap: () {
            setState(() {
              loginSelected = false;
              widget.isLogin(loginSelected);
            });
          },
          child: CustomText(
            text: 'SIGNUP',
            size: 22,
            bold: true,
            color: loginSelected == false
                ? AppColors.colorPrimaryOrange
                : AppColors.colorPrimaryOrange.withOpacity(0.4),
            alignment: TextAlign.start,
            padding: const EdgeInsets.all(5.0),
          ),
        ),
      ],
    );
  }
}
