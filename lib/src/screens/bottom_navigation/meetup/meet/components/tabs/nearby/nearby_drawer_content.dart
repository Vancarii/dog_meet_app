import 'package:dog_meet_app/src/global_components/components/app_colors.dart';
import 'package:dog_meet_app/src/global_components/components/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';

class NearbyDrawerContent extends StatefulWidget {
  @override
  _NearbyDrawerContentState createState() => _NearbyDrawerContentState();
}

class _NearbyDrawerContentState extends State<NearbyDrawerContent> {
  bool _isDefaultPreferences = true;
  bool _isRefined = false;

  RangeValues _currentRangeValues = RangeValues(1, 100);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: 'Preferences',
                  size: 26,
                  bold: true,
                ),
                CustomText(
                  text: 'These preferences change what will be shown in your home page.',
                  size: 15,
                  padding: const EdgeInsets.only(top: 15.0),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Row(
                    children: [
                      CustomText(
                        text: 'Show All Following',
                        size: 15,
                        bold: true,
                      ),
                      Spacer(),
                      CupertinoSwitch(
                        value: _isDefaultPreferences,
                        onChanged: (value) {
                          setState(() {
                            _isDefaultPreferences = value;
                            if (value == false) {
                              _isRefined = true;
                            } else {
                              _isRefined = false;
                            }
                            print(_isDefaultPreferences);
                          });
                        },
                        activeColor: AppColors.colorPrimaryOrange,
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 1,
                ),
                Row(
                  children: [
                    CustomText(
                      text: 'Refine',
                      size: 15,
                      bold: true,
                    ),
                    Spacer(),
                    CupertinoSwitch(
                      value: _isRefined,
                      onChanged: (value) {
                        setState(() {
                          _isRefined = value;
                          if (value == false) {
                            _isDefaultPreferences = true;
                          } else {
                            _isDefaultPreferences = false;
                          }
                          print(_isRefined);
                        });
                      },
                      activeColor: AppColors.colorPrimaryOrange,
                    ),
                  ],
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
                      InkWell(
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 5.0),
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.all(Radius.circular(15))),
                          child: Icon(FontAwesomeIcons.mars),
                        ),
                      ),
                      InkWell(
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 5.0),
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.all(Radius.circular(15))),
                          child: Icon(FontAwesomeIcons.venus),
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
