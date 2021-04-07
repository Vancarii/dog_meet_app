import 'package:dog_meet_app/src/core/auth/components/already_have_an_account_prompt.dart';
import 'package:dog_meet_app/src/global_components/components/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateProfile extends StatefulWidget {
  static const String id = 'create_profile';
  @override
  _CreatePupfileState createState() => _CreatePupfileState();
}

class _CreatePupfileState extends State<CreateProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.keyboard_arrow_left,
                    size: 35,
                  ),
                ),
                CustomText(
                  text: 'DOGGOD',
                  size: 15,
                  bold: true,
                  alignment: TextAlign.center,
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 100),
                ),
                CustomText(
                  text: 'Next',
                  size: 15,
                  bold: true,
                  alignment: TextAlign.center,
                  padding: EdgeInsets.only(top: 10),
                ),
                /*gibsonSemiBoldText('DOGGOD', 10, 10, 100, 100, 15, Colors.black,
                    TextAlign.center),

                gibsonSemiBoldText(
                    'Next', 10, 0, 0, 0, 15, Colors.black, TextAlign.center),*/
              ],
            ),
            AlreadyHaveAnAccountPrompt(),
          ],
        ),
      ),
    );
  }
}
