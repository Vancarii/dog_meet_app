import 'package:dog_meet_app/src/global_components/components/app_colors.dart';
import 'package:dog_meet_app/src/global_components/components/text_styles.dart';
import 'package:flutter/material.dart';

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
        children: [
          //ProfileCarousel(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 1.8,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            InkWell(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomText(
                                    text: '458',
                                    size: 18,
                                    bold: true,
                                  ),
                                  CustomText(
                                    text: 'Followers',
                                    size: 15,
                                    //bold: true,
                                    color: Colors.black54,
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            InkWell(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomText(
                                    text: '511',
                                    size: 18,
                                    bold: true,
                                  ),
                                  CustomText(
                                    text: 'Following',
                                    size: 15,
                                    //bold: true,
                                    color: Colors.black54,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
                        child: Divider(
                          endIndent: 50,
                          color: Colors.black54,
                          thickness: 1,
                        ),
                      ),
                      CustomText(
                        text: 'Yecheng Wang',
                        size: 20,
                        bold: true,
                        alignment: TextAlign.start,
                        padding: const EdgeInsets.only(bottom: 10.0),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.subdirectory_arrow_right_rounded,
                            size: 15,
                          ),
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 10.0),
                              child: Column(
                                children: [
                                  RichText(
                                      text: TextSpan(
                                          text: 'Rosy',
                                          style: TextStyle(
                                            fontFamily: 'Gibson',
                                            fontWeight: FontWeight.w600,
                                            fontSize: 18,
                                            color: Colors.black,
                                          ),
                                          children: [
                                        TextSpan(
                                          text: ' and ',
                                          style: TextStyle(
                                            fontFamily: 'Gibson',
                                            fontWeight: FontWeight.w200,
                                            fontSize: 15,
                                            color: Colors.black,
                                          ),
                                        ),
                                        TextSpan(
                                          text: 'Maze',
                                          style: TextStyle(
                                            fontFamily: 'Gibson',
                                            fontWeight: FontWeight.w600,
                                            fontSize: 18,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ])),
                                ],
                              ),
                            ),
                          ),
                          /*CustomText(
                              text: 'Rosy and Maze',
                              size: 18,
                              alignment: TextAlign.start,
                              padding: const EdgeInsets.only(bottom: 5.0),
                            ),*/
                        ],
                      ),
                      Wrap(
                        children: [
                          CustomText(
                            text: 'Two sisters exploring Beautiful British Columbia',
                            size: 15,
                            alignment: TextAlign.start,
                            padding: const EdgeInsets.only(bottom: 5.0),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/rosymazeprofile.jpg'),
                    radius: MediaQuery.of(context).size.width / 5.5,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: InkWell(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      alignment: Alignment.center,
                      //width: MediaQuery.of(context).size.width / 3,
                      height: 35,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: CustomText(
                        text: 'Links',
                        size: 15,
                        bold: true,
                      ),
                    ),
                  ),
                ),
              ],
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
