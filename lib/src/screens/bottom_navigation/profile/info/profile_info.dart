import 'package:dog_meet_app/src/global_components/themes/app_colors.dart';
import 'package:dog_meet_app/src/global_components/widgets/text_styles.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/market/body/store/market_store_details_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'components/pup_attributes.dart';
import 'components/pup_tab_bar.dart';
import 'package:dog_meet_app/src/global_components/enums/enums.dart';

class ProfileInfo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ProfileInfoState();
}

class ProfileInfoState extends State<ProfileInfo> {
  nameIsActive activePup = nameIsActive.pup1;

  function(value) => setState(() => activePup = value);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(gradient: AppColors.orangeYellowGradient),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
                              ProfilePostsCount(num: 457, title: 'Followers'),
                              ProfilePostsCount(num: 356, title: 'Following'),
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
                  text: 'Yecheng Wang',
                  size: 20.0,
                  bold: true,
                  color: AppColors.colorBlack,
                  alignment: TextAlign.start,
                ),
                Wrap(
                  children: [
                    CustomText(
                      text: 'Yecheng, Rosy, and Maze \nExploring Beautiful British Columbia',
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
            padding: const EdgeInsets.only(left: 10.0, top: 5.0),
            child: PupTabBar(
              funcIsPup: function,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                activePup == nameIsActive.pup1 ? Pup1Attributes() : Pup2Attributes(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProfilePostsCount extends StatelessWidget {
  final int num;
  final String title;
  const ProfilePostsCount({
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
