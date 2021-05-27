import 'package:dog_meet_app/src/global_components/enums/enums.dart';
import 'package:dog_meet_app/src/global_components/widgets/text_styles.dart';
import 'package:dog_meet_app/src/global_components/constants/constants.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/meetup/meet/components/post/meet_up_post.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class MeetUpNearbyFeed extends StatelessWidget {
  final _meetUpNearbyRefreshKey = GlobalKey<RefreshIndicatorState>();

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        _meetUpNearbyRefreshKey.currentState?.show(atTop: true);
        //await Future.delayed(Duration(milliseconds: 300));
        //TODO: implement Refresh page
      },
      key: _meetUpNearbyRefreshKey,
      child: ListView(
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
                  tooltip:
                      MaterialLocalizations.of(context).openAppDrawerTooltip,
                ),
              ),
            ),
          ),
          MeetUpPost(
            meetUpType: meetType.playdate,
            postImage: 'assets/images/pictures/rosymazeprofile.jpg',
            accountName: 'RosyandMaze',
            location: 'Glen Off-Leash Dog Park',
            numOfPeopleGoing: 3,
            time: '3:30',
            amPm: 'am',
            date: 'Sunday, April 18th, 2021',
          ),
          MeetUpPost(
            meetUpType: meetType.socialization,
            postImage: 'assets/images/pictures/rosy.png',
            accountName: 'RosyandMaze',
            location: 'location',
            numOfPeopleGoing: 3,
            time: '3:30',
            amPm: 'am',
            date: 'Sunday, April 18th, 2021',
          ),
          MeetUpPost(
            meetUpType: meetType.playdate,
            postImage: 'assets/images/pictures/rosy.png',
            accountName: 'RosyandMaze',
            location: 'location',
            numOfPeopleGoing: 3,
            time: '3:30',
            amPm: 'am',
            date: 'Sunday, April 18th, 2021',
          ),
          MeetUpPost(
            meetUpType: meetType.playdate,
            postImage: 'assets/images/pictures/rosy.png',
            accountName: 'RosyandMaze',
            location: 'location',
            numOfPeopleGoing: 3,
            time: '3:30',
            amPm: 'am',
            date: 'Sunday, April 18th, 2021',
          ),
        ],
      ),
    );
  }
}
