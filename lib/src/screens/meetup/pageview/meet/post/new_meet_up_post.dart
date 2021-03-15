import 'package:dog_meet_app/src/screens/global/components/text_styles.dart';
import 'package:flutter/material.dart';

class NewMeetUpPost extends StatelessWidget {
  final String accountName;
  final String postImage;
  final String location;
  final String time;
  final int numOfPeopleGoing;
  final String amPm;

  final VoidCallback onMeetUpPostSelected;

  NewMeetUpPost({
    this.postImage,
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
                        CustomText(
                          text: accountName,
                          size: 12,
                          bold: true,
                          alignment: TextAlign.center,
                          padding: const EdgeInsets.only(left: 5.0),
                        ),
                        /*Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Text(
                            accountName,
                            style: AppTextStyles.h12BlackBold,
                            textAlign: TextAlign.center,
                          ),
                        ),*/
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
                          postImage,
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
                        CustomText(
                          text: location,
                          size: 12,
                          bold: true,
                          alignment: TextAlign.center,
                        ),
                        /*Text(
                          location,
                          style: AppTextStyles.b12BlackReg,
                          textAlign: TextAlign.center,
                        ),*/
                        Spacer(
                          flex: 3,
                        ),
                        CustomText(
                          text: time + amPm,
                          size: 18,
                          bold: true,
                          alignment: TextAlign.center,
                        ),
                        /*Text(
                          time + amPm,
                          style: AppTextStyles.h18BlackBold,
                          textAlign: TextAlign.center,
                        ),*/
                        Spacer(flex: 2),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            CustomText(
                              text: numOfPeopleGoing.toString() + ' attending',
                              size: 10,
                              color: Colors.grey,
                              bold: true,
                              alignment: TextAlign.center,
                            ),
                            /*Text(
                              numOfPeopleGoing.toString(),
                              style: AppTextStyles.b10GreyReg,
                              textAlign: TextAlign.start,
                            ),*/
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
