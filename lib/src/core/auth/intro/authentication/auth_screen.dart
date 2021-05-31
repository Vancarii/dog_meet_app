import 'package:dog_meet_app/src/core/auth/intro/intro_screen.dart';
import 'package:dog_meet_app/src/global_components/route_transitions/route_transitions.dart';
import 'package:dog_meet_app/src/global_components/themes/app_colors.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/bnb/main_bottom_nav_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';

class AuthScreen extends StatefulWidget {
  static const String id = 'login_screen';

  const AuthScreen({Key key}) : super(key: key);

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  Duration get loginTime => Duration(milliseconds: 2250);

/*  Future<String> _authUser(LoginData data) {
    print('Name: ${data.name}, Password: ${data.password}');
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(data.name)) {
        return 'Username not exists';
      }
      if (users[data.name] != data.password) {
        return 'Password does not match';
      }
      return null;
    });
  }

  Future<String> _recoverPassword(String name) {
    print('Name: $name');
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(name)) {
        return 'Username not exists';
      }
      return null;
    });
  }*/

  @override
  Widget build(BuildContext context) {
    return FlutterLogin(
      loginAfterSignUp: true,
      title: 'DOGGOD',
      //logo: 'assets/images/logos/doglogo.png',
      onLogin: (_) => null,
      onSignup: (_) => null,
      onSubmitAnimationCompleted: () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => MainBottomNavMenu()),
        );
      },
      onRecoverPassword: (_) => Future(null),
      footer: 'COPYRIGHTED VANCARII',

      theme: LoginTheme(
        bodyStyle: TextStyle(
          color: AppColors.colorWhite,
          fontStyle: FontStyle.italic,
        ),
        titleStyle: TextStyle(
          fontFamily: 'Gibson',
          fontWeight: FontWeight.w400,
        ),
        textFieldStyle: TextStyle(
          color: AppColors.colorWhite,
        ),
        accentColor: AppColors.colorOffBlack,
        pageColorDark: AppColors.colorPrimaryOrange,
        pageColorLight: AppColors.colorPrimaryYellow,
        primaryColor: AppColors.colorPrimaryOrange,
      ),
    );
  }
}
