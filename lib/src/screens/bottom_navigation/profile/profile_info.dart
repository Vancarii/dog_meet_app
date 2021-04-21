import 'package:dog_meet_app/src/global_components/components/app_colors.dart';
import 'package:dog_meet_app/src/global_components/components/text_styles.dart';
import 'package:flutter/material.dart';

class ProfileInfo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ProfileInfoState();
}

class ProfileInfoState extends State<ProfileInfo> {
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
                        //padding: const EdgeInsets.only(top: 30),
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
                    onTap: () {},
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      alignment: Alignment.center,
                      //width: MediaQuery.of(context).size.width / 3,
                      height: 35,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              spreadRadius: 2,
                              blurRadius: 2,
                              offset: Offset(2, 2),
                            )
                          ],
                          border: Border.all(
                            color: Colors.black12,
                          ),
                          color: AppColors.colorOrange,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: CustomText(
                        text: 'Follow',
                        size: 15,
                        bold: true,
                      ),
                    ),
                  ),
                ),
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
                        text: 'Message',
                        size: 15,
                        bold: true,
                      ),
                    ),
                  ),
                ),
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
                        text: 'Photos',
                        size: 15,
                        bold: true,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomText(
                  text: 'ROSY',
                  size: 20,
                  bold: true,
                  color: Colors.black87,
                  alignment: TextAlign.start,
                  padding: const EdgeInsets.all(5.0),
                ),
                CustomText(
                  text: 'MAZE',
                  size: 20,
                  bold: true,
                  color: Colors.black26,
                  alignment: TextAlign.start,
                  padding: const EdgeInsets.all(5.0),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Wrap(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2),
                      child: RawChip(
                        label: CustomText(
                          text: 'Golden Retriever',
                          size: 12,
                          bold: true,
                        ),
                        backgroundColor: Colors.amber[100],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2),
                      child: RawChip(
                        label: CustomText(
                          text: '45 pounds',
                          size: 12,
                          bold: true,
                        ),
                        backgroundColor: Colors.amber[100],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2),
                      child: RawChip(
                        label: CustomText(
                          text: 'Not very playful',
                          size: 12,
                          bold: true,
                        ),
                        backgroundColor: Colors.amber[100],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2),
                      child: RawChip(
                        label: CustomText(
                          text: 'Gentle Greeter',
                          size: 12,
                          bold: true,
                        ),
                        backgroundColor: Colors.amber[100],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2),
                      child: RawChip(
                        label: CustomText(
                          text: 'Intact',
                          size: 12,
                          bold: true,
                        ),
                        backgroundColor: Colors.amber[100],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2),
                      child: RawChip(
                        label: CustomText(
                          text: 'Female',
                          size: 12,
                          bold: true,
                        ),
                        backgroundColor: Colors.amber[100],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
