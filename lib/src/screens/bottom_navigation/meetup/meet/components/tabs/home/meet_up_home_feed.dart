import 'package:dog_meet_app/src/global_components/constants/constants.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/meetup/meet/components/post/meet_up_post.dart';
import 'package:flutter/material.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class MeetUpHomeFeed extends StatelessWidget {
  MeetUpHomeFeed({
    Key key,
    @required this.slidingSheetController,
  }) : super(key: key);

  final SheetController slidingSheetController;

  final _meetUpHomeRefreshKey = GlobalKey<RefreshIndicatorState>();

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        _meetUpHomeRefreshKey.currentState?.show(atTop: true);
        //await Future.delayed(Duration(milliseconds: 300));
        //TODO: implement Refresh page
      },
      key: _meetUpHomeRefreshKey,
      child: ListView(
        physics: const AlwaysScrollableScrollPhysics(),
        padding: const EdgeInsets.only(bottom: 110),
        children: <Widget>[
          MeetUpPost(
            postImage: 'assets/images/pictures/rosymazeprofile.jpg',
            accountName: 'RosyandMaze',
            location: 'Glen Off-Leash Dog Park',
            numOfPeopleGoing: 3,
            time: '3:30',
            amPm: 'am',
            date: 'Sunday, April 18th, 2021',
            onMeetUpPostSelected: () {
              slidingSheetController.snapToExtent(kMaxSnapPosition,
                  duration: Duration(milliseconds: 150), clamp: true);
            },
          ),
          MeetUpPost(
            postImage: 'assets/images/pictures/rosy.png',
            accountName: 'RosyandMaze',
            location: 'location',
            numOfPeopleGoing: 3,
            time: '3:30',
            amPm: 'am',
            date: 'Sunday, April 18th, 2021',
            onMeetUpPostSelected: () {
              slidingSheetController.snapToExtent(kMaxSnapPosition,
                  duration: Duration(milliseconds: 150), clamp: true);
            },
          ),
          MeetUpPost(
            postImage: 'assets/images/pictures/rosy.png',
            accountName: 'RosyandMaze',
            location: 'location',
            numOfPeopleGoing: 3,
            time: '3:30',
            amPm: 'am',
            date: 'Sunday, April 18th, 2021',
            onMeetUpPostSelected: () {
              slidingSheetController.snapToExtent(kMaxSnapPosition,
                  duration: Duration(milliseconds: 150), clamp: true);
            },
          ),
          MeetUpPost(
            postImage: 'assets/images/pictures/rosy.png',
            accountName: 'RosyandMaze',
            location: 'location',
            numOfPeopleGoing: 3,
            time: '3:30',
            amPm: 'am',
            date: 'Sunday, April 18th, 2021',
            onMeetUpPostSelected: () {
              slidingSheetController.snapToExtent(kMaxSnapPosition,
                  duration: Duration(milliseconds: 150), clamp: true);
            },
          ),
        ],
      ),
    );
  }
}
