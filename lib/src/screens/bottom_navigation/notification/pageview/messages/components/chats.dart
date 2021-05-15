import 'package:dog_meet_app/src/global_components/themes/app_colors.dart';
import 'package:dog_meet_app/src/global_components/widgets/text_styles.dart';
import 'package:dog_meet_app/src/global_components/route_transitions/route_transitions.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/notification/pageview/messages/components/chat_screen.dart';
import 'package:flutter/material.dart';

class Chats extends StatefulWidget {
  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, RouteTransitions().slideRightToLeftTransitionType(ChatsScreen()));
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        height: 60,
        width: double.infinity,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: CircleAvatar(
                radius: 25,
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  CustomText(
                    text: 'Rosyandmaze',
                    size: 14,
                    // bold: true,
                    alignment: TextAlign.start,
                    padding: const EdgeInsets.only(bottom: 2.0),
                  ),
                  Text(
                    'Ayo was good bruv you tryna hit up Leigh or nah cuz its gonna rain tmr ',
                    style: TextStyle(
                      fontFamily: 'Gibson',
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: AppColors.colorGrey,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 30,
            ),
            CustomText(
              text: '4h',
              size: 12,
              color: Colors.grey,
              alignment: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
