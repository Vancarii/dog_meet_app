import 'package:dogmeet_app/src/screens/global/components/text_styles.dart';
import 'package:flutter/material.dart';

class NewMeetUpPost extends StatelessWidget {
  final String accountName;
  final String accountImage;
  final String location;
  final String time;
  final int numOfPeopleGoing;
  final String amPm;

  final VoidCallback onMeetUpPostSelected;

  NewMeetUpPost({
    this.accountImage,
    this.accountName,
    this.location,
    this.numOfPeopleGoing,
    this.time,
    this.amPm,
    @required this.onMeetUpPostSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 1,
              spreadRadius: 1,
            )
          ],
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
                  GestureDetector(
                    onTap: () {},
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: CircleAvatar(
                            maxRadius: 18,
                          ),
                        ),
                        gibsonSemiBoldText(accountName, 0, 0, 5, 0, 12,
                            Colors.black, TextAlign.center),
                      ],
                    ),
                  ),
                  Spacer(),
                  IconButton(
                    icon: Icon(Icons.more_vert),
                    onPressed: () {},
                    splashRadius: 1,
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                onMeetUpPostSelected();
                /*Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MeetUpDetailsPage(
                              accountImage: widget.accountImage,
                              accountName: widget.accountName,
                              location: widget.location,
                              time: widget.time,
                              numOfPeopleGoing: widget.numOfPeopleGoing,
                            )),
                  );*/
              },
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 400,
                    child: Image(
                        fit: BoxFit.fitWidth,
                        image: AssetImage(
                          accountImage,
                        )),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    height: 65,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.vertical(
                          bottom: Radius.circular(15.0),
                        )),
                    child: Row(
                      children: <Widget>[
                        gibsonSemiBoldText(location, 0, 0, 0, 0, 12,
                            Colors.black, TextAlign.center),
                        Spacer(
                          flex: 3,
                        ),
                        gibsonSemiBoldText(time + amPm, 0, 0, 0, 0, 18,
                            Colors.black, TextAlign.center),
                        Spacer(flex: 2),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            gibsonSemiBoldText(
                                numOfPeopleGoing.toString() + ' Attending',
                                0,
                                0,
                                0,
                                5,
                                10,
                                Colors.black45,
                                TextAlign.center),
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
