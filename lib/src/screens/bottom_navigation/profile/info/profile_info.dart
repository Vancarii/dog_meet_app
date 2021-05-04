import 'package:dog_meet_app/src/global_components/components/app_colors.dart';
import 'package:dog_meet_app/src/global_components/components/text_styles.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/market/body/store/market_store_details_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'components/pup_attributes.dart';
import 'components/pup_tab_bar.dart';

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
      //height: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          //borderRadius: BorderRadius.vertical(bottom: Radius.circular(15)),
          gradient: AppColors.orangeYellowGradient),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //ProfileCarousel(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(right: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            text: 'Yecheng Wang',
                            size: 20,
                            bold: true,
                            alignment: TextAlign.start,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5.0),
                            child: Divider(
                              thickness: 2,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 0),
                            child: Wrap(
                              crossAxisAlignment: WrapCrossAlignment.start,
                              runSpacing: 5.0,
                              children: [
                                StoreIconButton(
                                  icon: Icon(
                                    Icons.link,
                                    color: AppColors.colorOffBlack,
                                  ),
                                  borderColor: AppColors.colorOffBlack,
                                ),
                                StoreIconButton(
                                  icon: Icon(
                                    Icons.email_outlined,
                                    color: AppColors.colorOffBlack,
                                  ),
                                  borderColor: AppColors.colorOffBlack,
                                ),
                                StoreIconButton(
                                  icon: Icon(
                                    FontAwesomeIcons.instagram,
                                    color: AppColors.colorOffBlack,
                                  ),
                                  borderColor: AppColors.colorOffBlack,
                                ),
                                StoreIconButton(
                                  icon: Icon(
                                    FontAwesomeIcons.twitter,
                                    color: AppColors.colorDarkSlateGrey,
                                  ),
                                  borderColor: AppColors.colorOffBlack,
                                ),
                                StoreIconButton(
                                  icon: Icon(
                                    FontAwesomeIcons.tiktok,
                                    color: AppColors.colorOffBlack,
                                  ),
                                  borderColor: AppColors.colorOffBlack,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/rosymazeprofile.jpg'),
                    radius: 65,
                  ),
                ],
              ),
            ),
          ),
/*          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomExpandable(),
          ),*/
          Wrap(
            children: [
              CustomText(
                text: 'Yecheng, Rosy, and Maze \n Exploring Beautiful British Columbia',
                size: 16,
                height: 1.3,
                alignment: TextAlign.start,
                padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 5.0, left: 5.0, bottom: 5.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ProfilePostsCount(num: 457, title: 'Followers'),
                      ProfilePostsCount(num: 356, title: 'Following'),
                    ],
                  ),
                ],
              ),
            ),
          ),
          PupTabBar(
            funcIsPup: function,
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
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomText(
              text: '$num',
              size: 18,
              bold: true,
            ),
            CustomText(
              text: ' $title',
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
