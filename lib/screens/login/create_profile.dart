import 'package:dogmeet_app/components/ui/already_have_an_account_prompt.dart';
import 'package:flutter/material.dart';
import '../../components/ui/text_styles.dart';

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
                gibsonSemiBoldText('DOGGOD', 10, 10, 100, 100, 15, Colors.black,
                    TextAlign.center),
                gibsonSemiBoldText(
                    'Next', 10, 0, 0, 0, 15, Colors.black, TextAlign.center),
              ],
            ),
            AlreadyHaveAnAccountPrompt(),
          ],
        ),
      ),
    );
  }
}
