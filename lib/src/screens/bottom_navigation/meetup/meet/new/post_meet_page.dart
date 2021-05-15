import 'package:dog_meet_app/src/global_components/themes/app_colors.dart';
import 'package:dog_meet_app/src/global_components/widgets/text_styles.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/market/new/components/add_images_gridview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';

class PostMeetPage extends StatefulWidget {
  static const String id = 'post_meet_page';

  @override
  _PostMeetPageState createState() => _PostMeetPageState();
}

class _PostMeetPageState extends State<PostMeetPage> {
  bool _isLikePup = false;

  RangeValues _currentRangeValues = RangeValues(1, 100);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: CustomText(
          text: 'New Meet',
          size: 18,
          bold: true,
          //alignment: TextAlign.center,
        ),
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.close_rounded)),
        actions: <Widget>[
          Center(
            child: GestureDetector(
              child: CustomText(
                text: 'Post',
                size: 18,
                color: AppColors.colorPrimaryOrange,
                bold: true,
                alignment: TextAlign.center,
                padding: const EdgeInsets.only(right: 10.0),
              ),
              onTap: () {},
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AddImagesGridView(gridCount: 3),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    children: [
                      CustomText(
                        text: 'Find pups like yours?',
                        size: 15,
                        bold: true,
                      ),
                      Spacer(),
                      CupertinoSwitch(
                        value: _isLikePup,
                        onChanged: (value) {
                          setState(() {
                            _isLikePup = value;
                          });
                        },
                        activeColor: AppColors.colorPrimaryOrange,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0, bottom: 5.0),
                  child: Row(
                    children: [
                      CustomText(
                        text: 'Gender',
                        size: 15,
                        bold: true,
                      ),
                      Spacer(),
                      GestureDetector(
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 5.0),
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.all(Radius.circular(15))),
                          child: Icon(FontAwesomeIcons.mars),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 5.0),
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.all(Radius.circular(15))),
                          child: Icon(FontAwesomeIcons.venus),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {});
                        },
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 5.0),
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              color: AppColors.colorBlack.withOpacity(0.1),
                              borderRadius: BorderRadius.all(Radius.circular(15))),
                          child: Icon(FontAwesomeIcons.venusMars),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0, bottom: 5.0),
                  child: Row(
                    children: [
                      CustomText(
                        text: 'Can Smash?',
                        size: 15,
                        bold: true,
                      ),
                      Spacer(),
                      InkWell(
                        child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 5.0),
                            //width: 35,
                            height: 35,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Colors.black12,
                                borderRadius: BorderRadius.all(Radius.circular(15))),
                            child: CustomText(
                              text: 'Fixed',
                              size: 15,
                              bold: true,
                              padding: const EdgeInsets.symmetric(horizontal: 5.0),
                            )),
                      ),
                      InkWell(
                        child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 5.0),
                            //width: 35,
                            height: 35,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Colors.black12,
                                borderRadius: BorderRadius.all(Radius.circular(15))),
                            child: CustomText(
                              text: 'Intact',
                              size: 15,
                              bold: true,
                              padding: const EdgeInsets.symmetric(horizontal: 5.0),
                            )),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0, bottom: 5.0),
                  child: Row(
                    children: [
                      CustomText(
                        text: 'Size',
                        size: 15,
                        bold: true,
                      ),
                      Spacer(),
                      InkWell(
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 5.0),
                          width: 35,
                          height: 35,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.all(Radius.circular(15))),
                          child: CustomText(
                            text: 'XS',
                            size: 12,
                            bold: true,
                          ),
                        ),
                      ),
                      InkWell(
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 5.0),
                          width: 35,
                          height: 35,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.all(Radius.circular(15))),
                          child: CustomText(
                            text: 'S',
                            size: 12,
                            bold: true,
                          ),
                        ),
                      ),
                      InkWell(
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 5.0),
                          width: 35,
                          height: 35,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.all(Radius.circular(15))),
                          child: CustomText(
                            text: 'MED',
                            size: 12,
                            bold: true,
                          ),
                        ),
                      ),
                      InkWell(
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 5.0),
                          width: 35,
                          height: 35,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.all(Radius.circular(15))),
                          child: CustomText(
                            text: 'L',
                            size: 12,
                            bold: true,
                          ),
                        ),
                      ),
                      InkWell(
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 5.0),
                          width: 35,
                          height: 35,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.all(Radius.circular(15))),
                          child: CustomText(
                            text: 'XL',
                            size: 12,
                            bold: true,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0, bottom: 5.0),
                  child: Row(
                    children: [
                      CustomText(
                        text: 'Age',
                        size: 15,
                        bold: true,
                      ),
                      Expanded(
                        child: RangeSlider(
                          activeColor: AppColors.colorDarkSlateGrey,
                          inactiveColor: AppColors.colorLightCoral,
                          min: 1,
                          max: 100,
                          values: _currentRangeValues,
                          /*labels: RangeLabels(
                                          _currentRangeValues.start.round().toString(),
                                          _currentRangeValues.end.round().toString(),
                                        ),*/
                          onChanged: (values) {
                            setState(() {
                              _currentRangeValues = values;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0, bottom: 5.0),
                  child: Row(
                    children: [
                      CustomText(
                        text: 'Energy Level',
                        size: 15,
                        bold: true,
                      ),
                      Spacer(),
                      InkWell(
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 5.0),
                          //width: 35,
                          // height: 35,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.all(Radius.circular(15))),
                          child: Lottie.asset(
                            'assets/json/pandasleeping.json',
                            width: 50,
                            height: 50,
                          ),
                        ),
                      ),
                      InkWell(
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 5.0),
                          // width: 35,
                          //height: 35,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.all(Radius.circular(15))),
                          child: Lottie.asset(
                            'assets/json/puppyrunanimation.json',
                            width: 50,
                            height: 50,
                          ),
                        ),
                      ),
                      InkWell(
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 5.0),
                          //width: 35,
                          //height: 35,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.all(Radius.circular(15))),
                          child: Lottie.asset(
                            'assets/json/wtfdog.json',
                            width: 50,
                            height: 50,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
