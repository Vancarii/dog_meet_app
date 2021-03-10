import 'package:dogmeet_app/src/screens/global/components/constants.dart';
import 'package:dogmeet_app/src/screens/global/components/text_styles.dart';
import 'package:flutter/material.dart';

class NewMeetUpPost extends StatelessWidget {
  NewMeetUpPost({
    this.accountImage,
    this.accountName,
    this.location,
    this.numOfPeopleGoing,
    this.time,
  });

  final String accountName;
  final String accountImage;
  final String location;
  final String time;
  final int numOfPeopleGoing;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [kBoxShadow()],
        ),
        child: Column(
          children: <Widget>[
            Container(
              height: 45,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(15.0),
                  )),
              child: Row(
                children: <Widget>[
                  RawMaterialButton(
                    onPressed: () {},
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: CircleAvatar(
                            maxRadius: 18,
                          ),
                        ),
                        gibsonSemiBoldText('rosyandmaze', 0, 0, 5, 0, 12,
                            Colors.black, TextAlign.center),
                      ],
                    ),
                  ),
                  Spacer(),
                  IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 400,
              child: Image(
                  fit: BoxFit.fitWidth,
                  image: AssetImage(
                    'assets/images/rosy.png',
                  )),
            ),
            RawMaterialButton(
              onPressed: () {
                //TODO: ADD ROUTE TO POST INFORMATION PAGE
                Navigator.pushNamed(context, 'post information');
              },
              child: Container(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                height: 65,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(15.0),
                    )),
                child: Row(
                  children: <Widget>[
                    gibsonSemiBoldText('Location', 0, 0, 0, 0, 12, Colors.black,
                        TextAlign.center),
                    Spacer(
                      flex: 3,
                    ),
                    gibsonSemiBoldText(
                        'Time', 0, 0, 0, 0, 18, Colors.black, TextAlign.center),
                    Spacer(flex: 2),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        gibsonSemiBoldText('# People Attending', 0, 0, 0, 0, 10,
                            Colors.black45, TextAlign.center),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            children: <Widget>[
                              CircleAvatar(
                                maxRadius: 15,
                              ),
                              CircleAvatar(
                                maxRadius: 15,
                              ),
                              CircleAvatar(
                                maxRadius: 15,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
