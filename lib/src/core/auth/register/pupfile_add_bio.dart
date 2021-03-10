import 'package:dogmeet_app/src/core/auth/components/already_have_an_account_prompt.dart';
import 'package:dogmeet_app/src/screens/global/components/text_styles.dart';
import 'package:flutter/material.dart';

class PupfileAddBio extends StatefulWidget {
  static const String id = 'pupfile_add_bio';
  @override
  _PupfileAddBioState createState() => _PupfileAddBioState();
}

class _PupfileAddBioState extends State<PupfileAddBio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                //------------------------------------------------------------ BACK BUTTON and DOGGOD LOGO ------------------------------------------------------------

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

                //------------------------------------------------------------ NEXT BUTTON ------------------------------------------------------------

                //TODO: ADD ROUTE IN MAIN.DART AND BELOW TO GO TO NEXT PAGE OF SIGN UP
                GestureDetector(
                    onTap: () {
                      //Navigator.pushNamed(context, );
                    },
                    child: gibsonSemiBoldText('Next', 10, 0, 0, 0, 15,
                        Colors.black, TextAlign.center)),
              ],
            ),
            gibsonSemiBoldText(
                'Add a Bio', 20, 20, 0, 0, 33, Colors.black, TextAlign.center),

            //------------------------------------------------------------ SHOW PROFILE PICTURE and USERNAME ------------------------------------------------------------

            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: <Widget>[
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 2,
                              color: Colors.grey[400],
                              spreadRadius: 1,
                              offset: Offset(-1, 2)),
                        ]),
                    child: CircleAvatar(
                      child: gibsonSemiBoldText('Add Image', 0, 0, 0, 0, 12,
                          Colors.grey, TextAlign.center),
                      backgroundColor: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        gibsonSemiBoldText('Username', 10, 5, 0, 0, 12,
                            Colors.black, TextAlign.center),
                        gibsonSemiBoldText('Your Name', 5, 5, 0, 0, 12,
                            Colors.black, TextAlign.center),
                        gibsonSemiBoldText("Your Pupper's Name", 5, 10, 0, 0,
                            12, Colors.black, TextAlign.center),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            //------------------------------------------------------------ ALREADY HAVE AN ACCOUNT PROMPT ------------------------------------------------------------

            AlreadyHaveAnAccountPrompt(),
          ],
        ),
      ),
    );
  }
}
