import 'package:dog_meet_app/src/screens/global/components/text_styles.dart';
import 'package:dog_meet_app/src/screens/global/search/search_screen.dart';
import 'package:dog_meet_app/src/screens/meetup/pageview/meet/post/new_meet_up_post.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class MeetUpFeedPage extends StatelessWidget {
  const MeetUpFeedPage({
    Key key,
    @required this.slidingSheetController,
  }) : super(key: key);

  final SheetController slidingSheetController;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(left: 5.0, right: 5.0, top: 5.0, bottom: 120),
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 5.0),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, SearchBarScreen.id);
                  },
                  color: Colors.white,
                  elevation: 2,
                  shape:
                      RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30.0))),
                  child: Row(
                    children: <Widget>[
                      CustomText(
                        text: 'Search',
                        size: 15,
                        color: Colors.grey,
                        alignment: TextAlign.center,
                      ),
                      /*Text(
                        'Search',
                        style: AppTextStyles.b15GreyReg,
                        textAlign: TextAlign.center,
                      ),*/
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 2, right: 10),
                        child: Container(
                          width: 5,
                          child: Icon(
                            FontAwesomeIcons.search,
                            size: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            MaterialButton(
              elevation: 2,
              highlightElevation: 0,
              color: Color(0xfffc816a),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30.0))),
              onPressed: () {},
              child: Row(
                children: <Widget>[
                  CustomText(
                    text: 'Filter',
                    size: 15,
                    bold: true,
                    alignment: TextAlign.center,
                  ),
                  /*Text(
                    'Filter',
                    style: AppTextStyles.h15BlackBold,
                    textAlign: TextAlign.center,
                  ),*/
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: Container(
                      width: 5,
                      child: Icon(FontAwesomeIcons.sort),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        NewMeetUpPost(
          postImage: 'assets/images/rosy.png',
          accountName: 'RosyandMaze',
          location: 'location',
          numOfPeopleGoing: 3,
          time: '3:30',
          amPm: 'am',
          onMeetUpPostSelected: () {
            slidingSheetController.snapToExtent(double.infinity,
                duration: Duration(milliseconds: 150), clamp: true);
          },
        ),
        NewMeetUpPost(
          postImage: 'assets/images/rosy.png',
          accountName: 'RosyandMaze',
          location: 'location',
          numOfPeopleGoing: 3,
          time: '3:30',
          amPm: 'am',
          onMeetUpPostSelected: () {
            slidingSheetController.snapToExtent(double.infinity,
                duration: Duration(milliseconds: 150), clamp: true);
          },
        ),
      ],
    );
  }
}
