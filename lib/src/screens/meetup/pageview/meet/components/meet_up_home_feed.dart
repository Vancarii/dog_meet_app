import 'package:dog_meet_app/src/screens/meetup/pageview/meet/post/meet_up_post.dart';
import 'package:flutter/material.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class MeetUpHomeFeed extends StatelessWidget {
  const MeetUpHomeFeed({
    Key key,
    @required this.slidingSheetController,
  }) : super(key: key);

  final SheetController slidingSheetController;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(bottom: 110),
      children: <Widget>[
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
