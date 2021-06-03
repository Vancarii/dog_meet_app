import 'package:dog_meet_app/src/global_components/route_transitions/route_transitions.dart';
import 'package:dog_meet_app/src/global_components/themes/app_colors.dart';
import 'package:dog_meet_app/src/global_components/widgets/custom_rounded_textfield.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 0,
        backgroundColor: Colors.transparent,
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
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomRoundedTextField(
                    borderColor: Colors.transparent,
                    focusedBorderColor: Colors.transparent,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /*@override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FlutterLogin(
            messages: LoginMessages(
              userHint: 'Username',
            ),
            title: 'DOGGOD',
            //logo: 'assets/images/logos/doglogo.png',
            onLogin: (_) => null,
            onSignup: (_) => null,
            onSubmitAnimationCompleted: () {
              Navigator.push(context, RouteTransitions().scaleTransitionType(MainBottomNavMenu()));
            },
            onRecoverPassword: (_) => Future(null),
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
            ),
          ),
        ],
      ),
    );
  }*/
}
