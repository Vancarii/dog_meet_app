import 'package:dog_meet_app/src/global_components/components/app_colors.dart';
import 'package:dog_meet_app/src/global_components/components/text_styles.dart';
import 'package:dog_meet_app/src/global_components/constants.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/bnb/animated_bottom_navigation_bar/src/circular_notch_and_corner_clipper.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/meetup/meet/components/post/components/info_tiles.dart';
import 'package:flutter/material.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

import '../../meet_up_page.dart';

class MeetUpSlidingHeader extends StatelessWidget {
  const MeetUpSlidingHeader({
    Key key,
    @required this.slidingSheetController,
  }) : super(key: key);

  final SheetController slidingSheetController;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (slidingSheetController.state.isCollapsed == true) {
          slidingSheetController.snapToExtent(kMaxSnapPosition,
              duration: Duration(milliseconds: 150));
        } else {
          slidingSheetController.snapToExtent(kMinSnapPosition,
              duration: Duration(milliseconds: 150));
        }
      },
      child: Stack(
        children: [
          Container(
            height: 80,
            width: double.infinity,
            color: AppColors.colorPrimaryOrange,
          ),
          Container(
            height: 70,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    margin: const EdgeInsets.only(top: 6.0, bottom: 5.0),
                    width: 30,
                    height: 4,
                    decoration: BoxDecoration(
                      color: AppColors.colorDarkSlateGrey,
                      borderRadius: BorderRadius.all(Radius.circular(2)),
                    ),
                  ),
                ),
                Spacer(),
                Container(
                  child: CustomText(
                    text: 'Meet Up Details',
                    size: 26,
                    bold: true,
                    color: AppColors.colorDarkSlateGrey,
                    padding: const EdgeInsets.only(left: 20.0),
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

class SlidingSheetClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height / 3);
    path.lineTo(size.width / 1.3 - 2, size.height / 3);
    var firstControlPoint = Offset(size.width - 78, size.height - 51);
    var firstEndPoint = Offset(size.width - 71, (size.height - 35));
    path.quadraticBezierTo(
        firstControlPoint.dx, firstControlPoint.dy, firstEndPoint.dx, firstEndPoint.dy);
    var secondControlPoint = Offset(size.width - 40, size.height - 1);
    var secondEndPoint = Offset(size.width - 8, (size.height - 35));
    path.quadraticBezierTo(
        secondControlPoint.dx, secondControlPoint.dy, secondEndPoint.dx, secondEndPoint.dy);
    path.lineTo(size.width, size.height - 40);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
