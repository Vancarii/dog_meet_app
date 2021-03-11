import 'package:dogmeet_app/src/screens/global/components/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MeetUpDetailsPage extends StatefulWidget {
  static const String id = 'meet_up_details_page';

  MeetUpDetailsPage({
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
  _MeetUpDetailsPageState createState() => _MeetUpDetailsPageState();
}

class _MeetUpDetailsPageState extends State<MeetUpDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(FontAwesomeIcons.arrowLeft),
          onPressed: () {
            setState(() {
              Navigator.pop(context);
            });
          },
        ),
        elevation: 0,
        centerTitle: true,
        title: gibsonSemiBoldText(
            'Details', 0, 0, 0, 0, 20, Colors.black, TextAlign.center),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              FontAwesomeIcons.ellipsisV,
            ),
            onPressed: () {
              setState(() {
                showCupertinoDialog(
                    context: context,
                    barrierDismissible: true,
                    builder: (BuildContext context) {
                      return CupertinoAlertDialog(
                        title: Text('Actions'),
                        actions: [
                          CupertinoDialogAction(
                            child: Text('Report Meet Up'),
                            onPressed: () {
                              //TODO: ADD FUNCTIONALITY TO REPORT POST
                            },
                          ),
                          CupertinoDialogAction(
                            child: Text('Hide similar posts'),
                            onPressed: () {
                              //TODO; ADD FUNCTIONALITY TO HIDE LISTING AND SIMILAR
                            },
                          )
                        ],
                      );
                    });
              });
            },
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 30,
                      ),
                      gibsonSemiBoldText(widget.accountName, 5, 5, 10, 5, 15,
                          Colors.black, TextAlign.start),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
