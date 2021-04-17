import 'package:dog_meet_app/src/global_components/components/text_styles.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/meetup/meet/components/post/meet_up_post.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sliding_sheet/sliding_sheet.dart';
import '../../../meet_up_page.dart';

class MeetUpNearbyFeed extends StatelessWidget {
  const MeetUpNearbyFeed({
    @required this.slidingSheetController,
  });

  final SheetController slidingSheetController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.only(
          bottom: 110,
        ),
        children: <Widget>[
          InkWell(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.only(right: 10.0, top: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
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
          CustomText(
            text: 'Explore Nearby',
            size: 30,
            bold: true,
            alignment: TextAlign.right,
            padding: const EdgeInsets.only(top: 5.0, right: 10.0),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: Align(
              alignment: Alignment.topRight,
              child: Builder(
                builder: (context) => IconButton(
                  icon: Icon(Icons.sort),
                  onPressed: () => Scaffold.of(context).openEndDrawer(),
                  tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                ),
              ),
            ),
          ),
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
