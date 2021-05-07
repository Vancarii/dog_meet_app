import 'package:dog_meet_app/src/global_components/components/text_styles.dart';
import 'package:dog_meet_app/src/global_components/route_transitions/route_transitions.dart';
import 'package:dog_meet_app/src/screens/sub_screens/other_profile/other_profile_page.dart';
import 'package:flutter/material.dart';

class ProductPosterAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, RouteTransitions().slideRightToLeftTransitionType(OtherProfilePage()));
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 5, top: 10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            CircleAvatar(),
            CustomText(
              text: 'Account Name',
              size: 15,
              bold: true,
              alignment: TextAlign.start,
              padding: const EdgeInsets.only(left: 5.0),
            ),
          ],
        ),
      ),
    );
  }
}
