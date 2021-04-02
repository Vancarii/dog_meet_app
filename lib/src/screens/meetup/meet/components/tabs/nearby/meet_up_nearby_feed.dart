import 'package:dog_meet_app/src/screens/global/components/text_styles.dart';
import 'package:dog_meet_app/src/screens/meetup/meet/components/tabs/post/meet_up_post.dart';
import 'package:flutter/material.dart';
import 'package:sliding_sheet/sliding_sheet.dart';
import 'package:dog_meet_app/src/screens/meetup/meet/meet_up_page.dart';

class MeetUpNearbyFeed extends StatelessWidget {
  const MeetUpNearbyFeed({
    required this.slidingSheetController,
  });

  final SheetController slidingSheetController;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(bottom: 110),
      children: <Widget>[
        Row(
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    CustomText(
                      text: 'Port Moody, BC',
                      size: 12,
                      bold: true,
                      color: Colors.blue,
                      underline: true,
                    ),
                    Icon(
                      Icons.location_on,
                      color: Colors.blue,
                      size: 20,
                    ),
                  ],
                ),
              ),
            ),
            Spacer(),
            Builder(
              builder: (context) => IconButton(
                icon: Icon(Icons.sort),
                onPressed: () => Scaffold.of(context).openEndDrawer(),
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              ),
            ),
          ],
        ),
        MeetUpPost(
          postImage: 'assets/images/rosy.png',
          accountName: 'RosyandMaze',
          location: 'location',
          numOfPeopleGoing: 3,
          time: '3:30',
          amPm: 'am',
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
          onMeetUpPostSelected: () {
            slidingSheetController.snapToExtent(maxSnapPosition,
                duration: Duration(milliseconds: 150), clamp: true);
          },
        ),
      ],
    );
  }
}
