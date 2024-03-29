import 'package:dog_meet_app/src/global_components/themes/app_colors.dart';
import 'package:dog_meet_app/src/global_components/widgets/text_styles.dart';
import 'package:dog_meet_app/src/global_components/constants/constants.dart';
import 'package:dog_meet_app/src/global_components/route_transitions/route_transitions.dart';
import 'package:dog_meet_app/src/global_components/route_transitions/transparent_route.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/meetup/meet/components/details/meet_up_details_page.dart';
import 'package:dog_meet_app/src/screens/sub_screens/other_profile/other_profile_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ionicons/ionicons.dart' as ionIcons;
import 'package:dog_meet_app/src/global_components/enums/enums.dart';
import 'components/info_tiles.dart';

class MeetUpPost extends StatelessWidget {
  final meetType meetUpType;
  final String accountName;
  final String postImage;
  final String location;
  final String time;
  final int numOfPeopleGoing;
  final String amPm;
  final String date;

  MeetUpPost({
    @required this.meetUpType,
    this.postImage,
    this.accountName,
    this.location,
    this.numOfPeopleGoing,
    this.time,
    this.amPm,
    this.date,
  });

  static String type;
  //static meetType meetUpPostType;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          RouteTransitions().slideRightToLeftTransitionType(
            MeetUpDetailsPage(
              accountName: 'Rosyandmaze',
              image: 'assets/images/pictures/rosymazeprofile.jpg',
            ),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 10.0),
        height: kMeetUpPostHeight,
        width: MediaQuery.of(context).size.width,
        constraints: BoxConstraints(
          minWidth: MediaQuery.of(context).size.width,
          minHeight: kMeetUpPostHeight,
        ),
        decoration: BoxDecoration(
          boxShadow: [
            kBoxShadow(),
          ],
        ),
        child: Stack(
          children: [
            postImageLayer(),
            postInfoLayer(context),
          ],
        ),
      ),
    );
    //);
  }

  Widget postImageLayer() {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(postImage),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.black26,
            BlendMode.multiply,
          ),
        ),
      ),
    );
  }

  Widget postInfoLayer(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5.0),
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: <Widget>[
              postAccount(context),
              Spacer(),
              dialogButton(context),
            ],
          ),
          postTimeLocationInfo(),
          Spacer(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //The Wrap for the Info tiles need to be wrapped by a expanded widget
              //so that it has a constraint width and it is as big as possible
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        meetUpType != null
                            ? InfoTiles(
                                tileText: meetUpType == meetType.playdate
                                    ? 'PLAYDATE'
                                    : meetUpType == meetType.training
                                        ? 'TRAINING'
                                        : 'SOCIALIZATION',
                                tileColor: AppColors.colorPrimaryOrange,
                              )
                            : Container(),
                        InfoTiles(
                          tileText: 'Hike',
                          border: Border.all(color: AppColors.colorPrimaryOrange, width: 3),
                        ),
                      ],
                    ),
                    Wrap(
                      verticalDirection: VerticalDirection.up,
                      crossAxisAlignment: WrapCrossAlignment.start,
                      children: [
                        InfoTiles(tileIcon: FontAwesomeIcons.venusMars),
                        InfoTiles(tileText: 'Intact'),
                        InfoTiles(tileText: 'Medium Sizes'),
                        InfoTiles(tileText: numOfPeopleGoing.toString() + ' Going'),
                        InfoTiles(tileText: 'All Breeds'),
                        InfoTiles(tileText: 'Gentle Greeters'),
                        InfoTiles(tileText: '1.5 Year - 3 Year'),
                      ],
                    ),
                  ],
                ),
              ),
              //Spacer(),
              Column(
                mainAxisSize: MainAxisSize.min,
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
                      showShareSheet(context);
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
    );
  }

  Widget postAccount(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, RouteTransitions().slideRightToLeftTransitionType(OtherProfilePage()));
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
    );
  }

  Widget dialogButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: InkWell(
        child: Icon(
          Icons.more_vert,
          color: AppColors.colorWhite,
        ),
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
    );
  }

  Widget postTimeLocationInfo() {
    return Padding(
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
    );
  }
}
