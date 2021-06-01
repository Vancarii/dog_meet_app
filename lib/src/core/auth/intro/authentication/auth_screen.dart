import 'package:dog_meet_app/src/global_components/themes/app_colors.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/bnb/main_bottom_nav_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_package/flutter_login.dart';

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
    return Scaffold(
      body: Stack(
        children: [
          FlutterLogin(
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
            messages: LoginMessages(
              userHint: 'Username',
            ),
            theme: LoginTheme(
              cardTheme: CardTheme(
                color: Colors.transparent,
                elevation: 0,
              ),
              bodyStyle: TextStyle(
                color: AppColors.colorOffBlack,
                fontStyle: FontStyle.italic,
              ),
              titleStyle: TextStyle(
                color: AppColors.colorDarkSlateGrey,
                fontFamily: 'Gibson',
                fontWeight: FontWeight.w400,
              ),
              textFieldStyle: TextStyle(
                color: AppColors.colorOffBlack,
              ),
              accentColor: AppColors.colorOffBlack,
              pageColorDark: AppColors.colorPrimaryOrange,
              pageColorLight: AppColors.colorPrimaryYellow,
              primaryColor: AppColors.colorOffBlack,
            ),
          ),
          SafeArea(
              child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                padding: const EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.all(
                    Radius.circular(30.0),
                  ),
                ),
                child: Icon(Icons.arrow_back_rounded),
              ),
            ),
          )),
        ],
      ),
    );
  }
}
