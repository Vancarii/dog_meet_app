import 'package:dogmeet_app/components/ui/already_have_an_account_prompt.dart';
import 'package:dogmeet_app/components/ui/create_account_textfield.dart';
import 'package:dogmeet_app/screens/login/pupfile_add_bio.dart';
import 'package:flutter/material.dart';
import 'package:dogmeet_app/components/ui/text_styles.dart';

bool showTextFieldShadow = true;

class CreatePupfile extends StatefulWidget {
  static const String id = 'create_pupfile';
  @override
  _CreatePupfileState createState() => _CreatePupfileState();
}

class _CreatePupfileState extends State<CreatePupfile> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  final _formKey = GlobalKey<FormState>();

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
                Hero(
                    tag: 'app_title',
                    child: gibsonSemiBoldText('DOGGOD', 10, 10, 100, 100, 15,
                        Colors.black, TextAlign.center)),

                //------------------------------------------------- NEXT BUTTON and CREATE PUPFILE TITLE ------------------------------------------------------------

                GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, PupfileAddBio.id);
                    },
                    child: gibsonSemiBoldText('Next', 10, 0, 0, 0, 15,
                        Colors.black, TextAlign.center)),
              ],
            ),
            gibsonSemiBoldText('Create a Pupfile', 20, 20, 0, 0, 33,
                Colors.black, TextAlign.center),

            //------------------------------------------------------------ SIGN UP FORM  ------------------------------------------------------------

            //---------------------------------------------------- ADD PROFILE PICTURE BUTTON ------------------------------------------------------------

            Form(
                key: _formKey,
                child: Column(children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    child: RaisedButton(
                      onPressed: () {},
                      color: Colors.white,
                      shape: CircleBorder(),
                      elevation: 10,
                      child: //https://medium.com/fabcoding/adding-an-image-picker-in-a-flutter-app-pick-images-using-camera-and-gallery-photos-7f016365d856
                          gibsonSemiBoldText('Add Image', 0, 0, 0, 0, 12,
                              Colors.grey, TextAlign.center),
                    ),
                  ),
                  SizedBox(height: 20),

                  //------------------------------------------------------------ USERNAME TEXT FIELD ------------------------------------------------------------

                  CreateAccountTextfield(
                    width: double.maxFinite, //REQUIRED
                    height: 30, //REQUIRED
                    placeholder: "Username*",
                    obscureText: false,
                    suffixIcon: Icon(Icons.check_circle_rounded),
                    suffixColor: Colors.greenAccent,
/*                    suffixIcon: Icon(Icons.cancel_rounded),
              suffixColor: Colors.redAccent,*/
                    onChanged: (newusername) {
                      print(newusername);
                      //this is when each letter is entered into the text field
                      // TODO: CHECK IF USERNAME IS DUPLICATE IN DATABASE / IS ALREADY USED
                      // TODO: IF ALREADY USED THEN ADD X MARK TO SUFFIX ICON AND IF NOT USED THEN ADD CHECK MARK
                    },
                  ),

                  //------------------------------------------------------------ YOUR NAME TEXT FIELD ------------------------------------------------------------

                  CreateAccountTextfield(
                    width: double.maxFinite, //REQUIRED
                    height: 30, //REQUIRED
                    placeholder: "Your Name",
                    obscureText: false,
                  ),

                  //------------------------------------------------------------ YOUR PUPPER'S NAME TEXT FIELD ------------------------------------------------------------

                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: CreateAccountTextfield(
                            width: double.infinity, //REQUIRED
                            height: 30, //REQUIRED
                            placeholder: "Your Pupper's Name",
                            obscureText: false,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            //TODO: SOMEWHERE HERE ADD FUNCTIONALITY TO ADD MORE PUPPER'S
                          },
                          child: Icon(
                            Icons.add_circle_rounded,
                            size: 30,
                          ),
                        )
                      ],
                    ),
                  ),
                ])),

            //------------------------------------------------------------ ALREADY HAVE AN ACCOUNT PROMPT ------------------------------------------------------------

            AlreadyHaveAnAccountPrompt(),
          ],
        ),
      ),
    );
  }
}
