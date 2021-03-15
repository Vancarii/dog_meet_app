import 'package:dog_meet_app/src/screens/global/components/text_styles.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAnAccountPrompt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
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
              CustomText(
                text: 'Already have an account?',
                size: 12,
                bold: true,
                alignment: TextAlign.center,
                color: Colors.grey[700],
                padding: EdgeInsets.only(top: 20),
              ),
              CustomText(
                text: 'Log In',
                size: 12,
                bold: true,
                alignment: TextAlign.center,
                color: Colors.blue[600],
                padding: EdgeInsets.only(bottom: 30),
              ),
              /*gibsonSemiBoldText('Already have an account?', 20, 0, 0, 0, 12,
                  Colors.grey[700], TextAlign.center),
              gibsonSemiBoldText('Log In', 0, 30, 0, 0, 12, Colors.blue[600],
                  TextAlign.center),*/
            ],
          ),
        ),
      ),
    );
  }
}
