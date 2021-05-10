import 'package:dog_meet_app/src/global_components/components/app_colors.dart';
import 'package:dog_meet_app/src/global_components/components/text_styles.dart';
import 'package:dog_meet_app/src/global_components/route_transitions/route_transitions.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/market/body/store/market_store_details_page.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/notification/pageview/messages/components/chat_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'components/other_pup_attributes.dart';
import 'components/other_pup_tab_bar.dart';

class OtherProfileInfo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => OtherProfileInfoState();
}

class OtherProfileInfoState extends State<OtherProfileInfo> {
  nameIsActive activePup = nameIsActive.pup1;
  function(value) => setState(() => activePup = value);

  bool isFollowed = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(gradient: AppColors.orangeYellowGradient),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/pictures/rosymazeprofile.jpg'),
                    radius: 65,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              AccountPostCount(num: 457, title: 'Followers'),
                              AccountPostCount(num: 356, title: 'Following'),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 5.0),
                          child: Divider(
                            thickness: 1.0,
                            color: AppColors.colorOffBlack,
                            indent: 25.0,
                            endIndent: 25.0,
                          ),
                        ),
                        Wrap(
                          crossAxisAlignment: WrapCrossAlignment.start,
                          runSpacing: 5.0,
                          children: [
                            StoreIconButton(
                              borderThickness: 1.5,
                              icon: Icon(
                                Icons.link,
                                color: AppColors.colorDarkSlateGrey,
                              ),
                              borderColor: AppColors.colorOffBlack,
                            ),
                            StoreIconButton(
                              borderThickness: 1.5,
                              icon: Icon(
                                Icons.email_outlined,
                                color: AppColors.colorDarkSlateGrey,
                              ),
                              borderColor: AppColors.colorOffBlack,
                            ),
                            StoreIconButton(
                              borderThickness: 1.5,
                              onTap: () {
                                showCupertinoDialog(
                                  context: context,
                                  barrierDismissible: true,
                                  builder: (BuildContext context) {
                                    return CupertinoAlertDialog(
                                      title: Text('Open Instagram?'),
                                      content: Text('To open Instagram, you must first Log In'),
                                      actions: [
                                        CupertinoDialogAction(
                                          child: Text('Cancel'),
                                          onPressed: () {},
                                        ),
                                        CupertinoDialogAction(
                                          child: Text('Log In'),
                                          onPressed: () {},
                                        ),
                                      ],
                                    );
                                  },
                                );
                              },
                              icon: Icon(
                                FontAwesomeIcons.instagram,
                                color: AppColors.colorDarkSlateGrey,
                              ),
                              borderColor: AppColors.colorOffBlack,
                            ),
                            StoreIconButton(
                              borderThickness: 1.5,
                              onTap: () {
                                showCupertinoDialog(
                                  context: context,
                                  barrierDismissible: true,
                                  builder: (BuildContext context) {
                                    return CupertinoAlertDialog(
                                      title: Text('Open Twitter?'),
                                      content: Text('To open Twitter, you must first Log In'),
                                      actions: [
                                        CupertinoDialogAction(
                                          child: Text('Cancel'),
                                          onPressed: () {},
                                        ),
                                        CupertinoDialogAction(
                                          child: Text('Log In'),
                                          onPressed: () {},
                                        ),
                                      ],
                                    );
                                  },
                                );
                              },
                              icon: Icon(
                                FontAwesomeIcons.twitter,
                                color: AppColors.colorDarkSlateGrey,
                              ),
                              borderColor: AppColors.colorOffBlack,
                            ),
                            StoreIconButton(
                              borderThickness: 1.5,
                              onTap: () {
                                showCupertinoDialog(
                                  context: context,
                                  barrierDismissible: true,
                                  builder: (BuildContext context) {
                                    return CupertinoAlertDialog(
                                      title: Text('Open TikTok?'),
                                      content: Text('To open TikTok, you must first Log In'),
                                      actions: [
                                        CupertinoDialogAction(
                                          child: Text('Cancel'),
                                          onPressed: () {},
                                        ),
                                        CupertinoDialogAction(
                                          child: Text('Log In'),
                                          onPressed: () {},
                                        ),
                                      ],
                                    );
                                  },
                                );
                              },
                              icon: Icon(
                                FontAwesomeIcons.tiktok,
                                color: AppColors.colorDarkSlateGrey,
                              ),
                              borderColor: AppColors.colorOffBlack,
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
/*          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomExpandable(),
          ),*/
          Container(
            margin: const EdgeInsets.only(left: 10.0, top: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: 'Name',
                  size: 20.0,
                  bold: true,
                  color: AppColors.colorBlack,
                  alignment: TextAlign.start,
                ),
                Wrap(
                  children: [
                    CustomText(
                      text: 'This is the bio, where users put anything',
                      size: 16,
                      height: 1.3,
                      alignment: TextAlign.start,
                      color: AppColors.colorBlack,
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.location_on_rounded,
                        color: AppColors.colorDarkSlateGrey,
                      ),
                      CustomText(
                        text: 'Port Moody, BC',
                        color: AppColors.colorDarkSlateGrey,
                        padding: const EdgeInsets.only(left: 5.0),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        isFollowed = !isFollowed;
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      alignment: Alignment.center,
                      height: 35,
                      decoration: BoxDecoration(
                        color:
                            isFollowed == true ? Colors.transparent : AppColors.colorDarkSlateGrey,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        border: Border.all(
                          width: 2,
                          color: AppColors.colorDarkSlateGrey,
                        ),
                      ),
                      child: CustomText(
                        text: isFollowed == true ? 'Following' : 'Follow',
                        size: 15,
                        bold: true,
                        color: isFollowed == true
                            ? AppColors.colorDarkSlateGrey
                            : AppColors.colorWhite,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          RouteTransitions().slideRightToLeftTransitionType(ChatsScreen()));
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      alignment: Alignment.center,
                      height: 35,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: CustomText(
                        text: 'Message',
                        size: 15,
                        bold: true,
                        color: AppColors.colorBlack,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          OtherPupTabBar(
            padding: const EdgeInsets.only(top: 15.0, left: 10.0),
            funcIsPup: function,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                activePup == nameIsActive.pup1 ? OtherPup1Attributes() : OtherPup2Attributes(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AccountPostCount extends StatelessWidget {
  final int num;
  final String title;
  const AccountPostCount({
    Key key,
    this.num = 0,
    this.title = 'Followers',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomText(
              text: '$num',
              size: 20,
              bold: true,
              color: AppColors.colorBlack,
            ),
            CustomText(
              text: '$title',
              size: 15,
              //bold: true,
              color: Colors.black54,
            )
          ],
        ),
      ),
    );
  }
}
