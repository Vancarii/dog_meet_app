import 'package:dog_meet_app/src/global_components/components/app_colors.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/meetup/meet/components/post/meet_up_post.dart';
import 'package:flutter/material.dart';
import 'package:sliding_sheet/sliding_sheet.dart';
import '../../../meet_up_page.dart';

class MeetUpHomeFeed extends StatelessWidget {
  const MeetUpHomeFeed({
    Key key,
    @required this.slidingSheetController,
  }) : super(key: key);

  final SheetController slidingSheetController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: AppColors.colorDarkSlateGrey,
        automaticallyImplyLeading: false,
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.only(bottom: 110),
        children: <Widget>[
          MeetUpPost(
            postImage: 'assets/images/rosymazeprofile.jpg',
            accountName: 'RosyandMaze',
            location: 'Glen Off-Leash Dog Park',
            numOfPeopleGoing: 3,
            time: '3:30',
            amPm: 'am',
            date: 'Sunday, April 18th, 2021',
            onMeetUpPostSelected: () {
              slidingSheetController.snapToExtent(maxSnapPosition,
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
            date: 'Sunday, April 18th, 2021',
            onMeetUpPostSelected: () {
              slidingSheetController.snapToExtent(maxSnapPosition,
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
            date: 'Sunday, April 18th, 2021',
            onMeetUpPostSelected: () {
              slidingSheetController.snapToExtent(maxSnapPosition,
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
            date: 'Sunday, April 18th, 2021',
            onMeetUpPostSelected: () {
              slidingSheetController.snapToExtent(maxSnapPosition,
                  duration: Duration(milliseconds: 150), clamp: true);
            },
          ),
        ],
      ),
    );
  }
}
