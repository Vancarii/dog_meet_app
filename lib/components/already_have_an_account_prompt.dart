import 'package:flutter/material.dart';

import 'text_styles.dart';

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
              gibsonSemiBoldText('Already have an account?', 20, 0, 0, 0, 12,
                  Colors.grey[700], TextAlign.center),
              gibsonSemiBoldText('Log In', 0, 30, 0, 0, 12, Colors.blue[600],
                  TextAlign.center),
            ],
          ),
        ),
      ),
    );
  }
}
