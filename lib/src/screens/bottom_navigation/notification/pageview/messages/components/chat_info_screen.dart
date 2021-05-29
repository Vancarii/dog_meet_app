import 'package:dog_meet_app/src/global_components/themes/app_colors.dart';
import 'package:dog_meet_app/src/global_components/widgets/text_styles.dart';
import 'package:dog_meet_app/src/global_components/route_transitions/route_transitions.dart';
import 'package:dog_meet_app/src/screens/sub_screens/other_profile/other_profile_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatInfoScreen extends StatefulWidget {
  @override
  _ChatInfoScreenState createState() => _ChatInfoScreenState();
}

class _ChatInfoScreenState extends State<ChatInfoScreen> {
  bool boolIsMute = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        titleSpacing: 0,
        title: CustomText(
          text: 'Details',
          size: 18,
          bold: true,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: 'Members',
                size: 18,
                bold: true,
                padding: const EdgeInsets.only(bottom: 10.0),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      RouteTransitions()
                          .slideRightToLeftTransitionType(OtherProfilePage()));
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: CircleAvatar(
                          //radius: 25,
                          ),
                    ),
                    CustomText(
                      text: 'Rosyandmaze',
                      size: 14,
                      //bold: true,
                      alignment: TextAlign.start,
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 1,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    boolIsMute = !boolIsMute;
                  });
                },
                child: Row(
                  children: [
                    CustomText(
                      text: 'Mute Messages',
                      size: 15,
                      bold: true,
                    ),
                    Spacer(),
                    CupertinoSwitch(
                      value: boolIsMute,
                      onChanged: (value) {
                        setState(() {
                          boolIsMute = value;
                        });
                      },
                      activeColor: AppColors.colorPrimaryOrange,
                    ),
                  ],
                ),
              ),
              /*Divider(
                thickness: 1,
              ),*/
              CustomText(
                text: 'Report',
                size: 15,
                bold: true,
                color: Colors.red,
                padding: const EdgeInsets.symmetric(vertical: 10.0),
              ),
              CustomText(
                text: 'Block',
                size: 15,
                bold: true,
                padding: const EdgeInsets.symmetric(vertical: 10.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
