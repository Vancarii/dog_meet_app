import 'package:dog_meet_app/src/global_components/components/app_colors.dart';
import 'package:dog_meet_app/src/global_components/components/text_styles.dart';
import 'package:dog_meet_app/src/global_components/constants.dart';
import 'package:dog_meet_app/src/global_components/route_transitions/route_transitions.dart';
import 'package:dog_meet_app/src/global_components/route_transitions/transparent_route.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/bnb/main_bottom_nav_menu.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/meetup/meet/components/post/components/slide_up_share_prompt.dart';
import 'package:dog_meet_app/src/screens/sub_screens/other_profile/other_profile_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ionicons/ionicons.dart' as ionIcons;

import 'components/info_tiles.dart';

class MeetUpPost extends StatelessWidget {
  final String accountName;
  final String postImage;
  final String location;
  final String time;
  final int numOfPeopleGoing;
  final String amPm;
  final String date;

  final VoidCallback onMeetUpPostSelected;

  MeetUpPost({
    this.postImage,
    this.accountName,
    this.location,
    this.numOfPeopleGoing,
    this.time,
    this.amPm,
    this.date,
    this.onMeetUpPostSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: InkWell(
        onTap: onMeetUpPostSelected,
        child: Container(
          height: kMeetUpPostHeight,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            boxShadow: [
              kBoxShadow(),
            ],
          ),
          child: Stack(
            children: [
              Container(
/*                height: 300,
                width: MediaQuery.of(context).size.width,*/
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(postImage),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Colors.black26,
                      BlendMode.multiply,
                    ),
                  ),
                  //borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(5.0),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: <Widget>[
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                RouteTransitions()
                                    .slideRightToLeftTransitionType(OtherProfilePage()));
                          },
                          child: Container(
                            child: Row(
                              children: <Widget>[
                                CircleAvatar(
                                  maxRadius: 18,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5.0),
                                  child: CustomText(
                                    text: accountName,
                                    size: 14,
                                    bold: true,
                                    color: AppColors.colorWhite,
                                    alignment: TextAlign.center,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: InkWell(
                            child: Icon(
                              Icons.more_vert,
                              color: AppColors.colorWhite,
                            ),
                            splashColor: Colors.transparent,
                            onTap: () {
                              showCupertinoDialog(
                                  context: context,
                                  barrierDismissible: true,
                                  builder: (BuildContext context) {
                                    return CupertinoAlertDialog(
                                      title: Text('Actions'),
                                      actions: [
                                        CupertinoDialogAction(
                                          child: Text('Report'),
                                          onPressed: () {
                                            //TODO: ADD FUNCTIONALITY TO REPORT LISTING
                                          },
                                        ),
                                        CupertinoDialogAction(
                                          child: Text('Turn on post notifications'),
                                          onPressed: () {
                                            //TODO; ADD FUNCTIONALITY TO HIDE LISTING AND SIMILAR
                                          },
                                        ),
                                        CupertinoDialogAction(
                                          child: Text('Not Interested'),
                                          onPressed: () {
                                            //TODO; ADD FUNCTIONALITY TO HIDE LISTING AND SIMILAR
                                          },
                                        ),
                                      ],
                                    );
                                  });
                            },
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 5.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            text: location,
                            size: 30,
                            bold: true,
                            color: AppColors.colorWhite,
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          CustomText(
                            text: time + ' ' + amPm + ', ' + date,
                            size: 18,
                            color: AppColors.colorWhite,
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width - 58,
                          child: Wrap(
                            verticalDirection: VerticalDirection.up,
                            crossAxisAlignment: WrapCrossAlignment.start,
                            children: [
                              InfoTiles(
                                tileIcon: FontAwesomeIcons.venusMars,
                                tileColor: AppColors.colorWhite,
                              ),
                              InfoTiles(tileText: 'Intact'),
                              InfoTiles(tileText: 'Medium Sizes'),
                              InfoTiles(tileText: numOfPeopleGoing.toString() + ' Going'),
                              InfoTiles(tileText: 'All Breeds'),
                              InfoTiles(tileText: 'Gentle Greeters'),
                              InfoTiles(tileText: '1.5 Year - 3 Year'),
                            ],
                          ),
                        ),
                        Spacer(),
                        Column(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                ionIcons.Ionicons.chatbubbles_outline,
                                color: AppColors.colorWhite,
                                size: 30,
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                mainSlidingSheetController.snapToExtent(0.7,
                                    duration: Duration(milliseconds: 200), clamp: true);
                                /*Navigator.push(
                                  context,
                                  SlideUpTransparentRoute(
                                      builder: (context) => SlideUpSharePrompt()),
                                );*/
                              },
                              icon: Icon(
                                FontAwesomeIcons.paperPlane,
                                color: AppColors.colorWhite,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
    //);
  }
}
