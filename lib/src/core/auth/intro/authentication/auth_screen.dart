import 'package:dog_meet_app/src/core/auth/intro/authentication/login_type_tab_bar.dart';
import 'package:dog_meet_app/src/global_components/constants/constants.dart';
import 'package:dog_meet_app/src/global_components/route_transitions/route_transitions.dart';
import 'package:dog_meet_app/src/global_components/themes/app_colors.dart';
import 'package:dog_meet_app/src/global_components/widgets/custom_rounded_textfield.dart';
import 'package:dog_meet_app/src/global_components/widgets/text_styles.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/bnb/main_bottom_nav_menu.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  static const String id = 'login_screen';

  const AuthScreen({Key key}) : super(key: key);

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> with TickerProviderStateMixin {
  FocusNode usernameFocusNode = FocusNode();
  FocusNode emailFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();
  FocusNode confirmPasswordFocusNode = FocusNode();

  bool isLogin = true;

  AnimationController _animationController;

  unfocusAllNodes() {
    usernameFocusNode.unfocus();
    emailFocusNode.unfocus();
    passwordFocusNode.unfocus();
    confirmPasswordFocusNode.unfocus();
  }

  Animation<double> sizeAnimation({bool isTextField}) {
    return Tween<double>(
      begin: isTextField == true ? 0.0 : 1.0,
      end: isTextField == true ? 1.0 : 0.0,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: const Interval(0.0, 1.0, curve: Curves.easeInOutBack),
      reverseCurve: const Interval(0.0, 1.0, curve: Curves.easeInOutQuad),
    ));
  }

  @override
  void initState() {
    _animationController = AnimationController(vsync: this, duration: Duration(milliseconds: 350));

    super.initState();
  }

  @override
  void dispose() {
    usernameFocusNode.dispose();
    passwordFocusNode.dispose();
    emailFocusNode.dispose();
    confirmPasswordFocusNode.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: AppColors.orangeYellowBLTRGradient,
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          brightness: Brightness.light,
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_rounded),
          ),
        ),
        body: InkWell(
          onTap: () {
            if (usernameFocusNode.hasFocus == true ||
                passwordFocusNode.hasFocus == true ||
                emailFocusNode.hasFocus == true ||
                confirmPasswordFocusNode.hasFocus == true) {
              unfocusAllNodes();
            }
          },
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomText(
                    text: 'DOGGOD',
                    size: 45,
                    bold: true,
                    padding: const EdgeInsets.symmetric(vertical: 35.0),
                    alignment: TextAlign.center,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(35.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          LoginTypeTabBar(
                            isLogin: (login) {
                              setState(() {
                                isLogin = login;
                                print(isLogin);
                                unfocusAllNodes();
                                if (isLogin == false) {
                                  _animationController.forward();
                                } else {
                                  _animationController.reverse();
                                }
                              });
                            },
                          ),
                          buildUsernameField(),
                          buildEmailField(),
                          buildPasswordField(),
                          buildConfirmPasswordField(),
                          SizeTransition(
                            sizeFactor: sizeAnimation(isTextField: false),
                            child: Container(
                              width: double.infinity,
                              alignment: Alignment.centerRight,
                              child: CustomText(
                                text: 'Forgot Password?',
                                italics: true,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pushReplacement(
                                  context,
                                  RouteTransitions().slideRightToLeftJoinedTransitionType(
                                      AuthScreen(), MainBottomNavMenu()));
                            },
                            child: Container(
                              margin: const EdgeInsets.all(25.0),
                              padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                                boxShadow: [kBoxShadow()],
                                color: AppColors.colorDarkSlateGrey,
                              ),
                              child: CustomText(
                                text: isLogin == true ? 'Login' : 'Sign Up',
                                size: 18,
                                bold: true,
                                color: AppColors.colorWhite,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildUsernameField() {
    return CustomRoundedTextField(
      node: usernameFocusNode,
      keyboardAction: TextInputAction.next,
      keyboard: TextInputType.name,
      onSubmit: (String text) {
        usernameFocusNode.unfocus();
        if (isLogin == true) {
          FocusScope.of(context).requestFocus(passwordFocusNode);
        } else {
          FocusScope.of(context).requestFocus(emailFocusNode);
        }
      },
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      labelText: 'Username',
      focusIconColor: AppColors.colorOffBlack,
      cursorColor: AppColors.colorWhite,
      startIcon: IconButton(
        icon: Icon(Icons.account_circle),
        onPressed: () {},
      ),
      borderColor: Colors.transparent,
      focusedBorderColor: Colors.transparent,
    );
  }

  Widget buildEmailField() {
    return SizeTransition(
      sizeFactor: sizeAnimation(isTextField: true),
      child: CustomRoundedTextField(
        node: emailFocusNode,
        keyboardAction: TextInputAction.next,
        keyboard: TextInputType.emailAddress,
        onSubmit: (String text) {
          emailFocusNode.unfocus();
          FocusScope.of(context).requestFocus(passwordFocusNode);
        },
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        labelText: 'Email',
        focusIconColor: AppColors.colorOffBlack,
        cursorColor: AppColors.colorWhite,
        startIcon: IconButton(
          icon: Icon(Icons.email),
          onPressed: () {},
        ),
        borderColor: Colors.transparent,
        focusedBorderColor: Colors.transparent,
      ),
    );
  }

  Widget buildPasswordField() {
    return CustomRoundedTextField(
      node: passwordFocusNode,
      keyboardAction: isLogin == true ? TextInputAction.done : TextInputAction.next,
      password: true,
      onSubmit: (String text) {
        passwordFocusNode.unfocus();
        if (isLogin == true) {
          //submit
        } else {
          FocusScope.of(context).requestFocus(confirmPasswordFocusNode);
        }
        //login or if its signup then go to confirm password
      },
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      labelText: 'Password',
      focusIconColor: AppColors.colorOffBlack,
      cursorColor: AppColors.colorOffBlack,
      startIcon: IconButton(
        icon: Icon(Icons.lock),
        onPressed: () {},
      ),
      borderColor: Colors.transparent,
      focusedBorderColor: Colors.transparent,
    );
  }

  Widget buildConfirmPasswordField() {
    return SizeTransition(
      sizeFactor: sizeAnimation(isTextField: true),
      child: CustomRoundedTextField(
        node: confirmPasswordFocusNode,
        keyboardAction: TextInputAction.done,
        keyboard: TextInputType.name,
        onSubmit: (String text) {
          unfocusAllNodes();
          //submit
        },
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        labelText: 'Confirm Password',
        focusIconColor: AppColors.colorOffBlack,
        cursorColor: AppColors.colorWhite,
        startIcon: IconButton(
          icon: Icon(Icons.lock),
          onPressed: () {},
        ),
        borderColor: Colors.transparent,
        focusedBorderColor: Colors.transparent,
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
