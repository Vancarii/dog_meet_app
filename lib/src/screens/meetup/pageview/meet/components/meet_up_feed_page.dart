import 'package:dog_meet_app/src/screens/global/components/app_colors.dart';
import 'package:dog_meet_app/src/screens/global/components/text_styles.dart';
import 'package:dog_meet_app/src/screens/global/search/search_screen.dart';
import 'package:dog_meet_app/src/screens/meetup/pageview/meet/post/meet_up_post.dart';
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
      padding: const EdgeInsets.only(bottom: 110),
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
              gradient:
                  LinearGradient(begin: Alignment.bottomLeft, end: Alignment.topRight, colors: [
            AppColors.colorPrimaryOrange,
            AppColors.colorPrimaryYellow,
          ])),
          //height: 35,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              CustomText(
                text: 'HOME',
                size: 15,
                bold: true,
                color: Colors.black38,
                padding: const EdgeInsets.only(left: 15.0),
              ),
              CustomText(
                text: 'NEARBY',
                size: 15,
                bold: true,
                color: Colors.black38,
                padding: const EdgeInsets.only(left: 15.0),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: InkWell(
                  child: Icon(Icons.search),
                  onTap: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: InkWell(
                  child: Icon(Icons.sort),
                  onTap: () {},
                ),
              ),
            ],
          ),
        ),
        MeetUpPost(
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
        MeetUpPost(
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
        MeetUpPost(
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
        MeetUpPost(
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
