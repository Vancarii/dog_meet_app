import 'package:dog_meet_app/src/core/auth/components/already_have_an_account_prompt.dart';
import 'package:dog_meet_app/src/core/auth/components/profile_type_rounded_button.dart';
import 'package:dog_meet_app/src/global_components/widgets/text_styles.dart';
import 'package:flutter/material.dart';
import 'create_profile.dart';
import 'create_pupfile.dart';

class NewUserScreen extends StatefulWidget {
  static const String id = 'new_user_screen';
  @override
  _NewUserScreenState createState() => _NewUserScreenState();
}

class _NewUserScreenState extends State<NewUserScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Hero(
            tag: 'app_title',
            child: CustomText(
              text: 'DOGGOD',
              size: 15,
              alignment: TextAlign.center,
              bold: true,
              padding: EdgeInsets.only(top: 10),
            ),
          ),
          CustomText(
            text: 'Sign Up',
            size: 15,
            alignment: TextAlign.center,
            padding: EdgeInsets.only(top: 10),
          ),
          CustomText(
            text: 'Do you have a pup?',
            size: 25,
            alignment: TextAlign.center,
            padding: EdgeInsets.only(top: 70),
          ),

          /*gibsonSemiBoldText(
                  'DOGGOD', 10, 0, 0, 0, 15, Colors.black, TextAlign.center)),
          gibsonSemiBoldText(
              'Sign Up', 60, 0, 0, 0, 35, Colors.black, TextAlign.center),
          gibsonSemiBoldText('Do you have a pup?', 70, 0, 0, 0, 25,
              Colors.black, TextAlign.center),*/
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              profileTypeRoundedButton('Yes! \n Create a Pupfile', CreatePupfile.id, context),
              SizedBox(
                width: 60,
              ),
              profileTypeRoundedButton('No, \n Create a Profile', CreateProfile.id, context),
            ],
          ),
/*          SizedBox(
            height: 150,
          ),*/
          //PUPPY RUNNING ANIMATION
          // Padding(
          //   padding: const EdgeInsets.only(top: 50),
          //   child: Container(
          //     width: 100,
          //     height: 100,
          //     child: Lottie.asset(
          //       'assets/puppyrunanimation.json',
          //     ),
          //   ),
          // ),
          AlreadyHaveAnAccountPrompt(),

          /*Expanded(
            child: Hero(
              tag: 'already_have_an_account_prompt',
              child: GestureDetector(
                onTap: () {
                  //TODO: GO TO LOGIN SCREEN, CHANGE 'LOGIN SCREEN' TO ROUTE NAME
                  //Navigator.pushNamed(context, 'Login Screen');
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    CustomText(text: 'Already Have an Account', size: size)
                    */ /*gibsonSemiBoldText('Already have an account?', 20, 0, 0, 0,
                        12, Colors.grey[700], TextAlign.center),
                    gibsonSemiBoldText('Log In', 0, 30, 0, 0, 12,
                        Colors.blue[600], TextAlign.center),*/ /*
                  ],
                ),
              ),
            ),
          )*/
        ],
      ),
    ));
  }
}
