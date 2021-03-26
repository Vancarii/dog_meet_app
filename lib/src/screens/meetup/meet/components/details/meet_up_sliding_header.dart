import 'package:dog_meet_app/src/screens/global/components/app_colors.dart';
import 'package:dog_meet_app/src/screens/global/components/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
          slidingSheetController.snapToExtent(maxSnapPosition,
              duration: Duration(milliseconds: 150));
        } else {
          slidingSheetController.snapToExtent(minSnapPosition,
              duration: Duration(milliseconds: 150));
        }
      },
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.colorLightCoral,
          //gradient: AppColors.orangeYellowGradient,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: const EdgeInsets.only(top: 6.0, bottom: 5.0),
                width: 30,
                height: 4,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.all(Radius.circular(2)),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                left: 10.0,
                right: 10.0,
                bottom: 10.0,
              ),
              height: 50,
              width: double.infinity,
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(),
                  /*Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomText(
                          text: 'Account Name',
                          size: 12,
                          bold: true,
                          alignment: TextAlign.start,
                          padding: const EdgeInsets.symmetric(vertical: 2),
                        ),
                         CustomText(
                          text: 'Golden Retriever',
                          size: 15,
                          bold: true,
                          alignment: TextAlign.start,
                        ),
                      ],
                    ),
                  ),*/
                  VerticalDivider(
                    indent: 10,
                    endIndent: 10,
                    color: Colors.black54,
                    thickness: 1,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 3.0),
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    child: Icon(
                      FontAwesomeIcons.venus,
                      color: Colors.pink,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 3.0),
                    width: 40,
                    height: 40,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    child: CustomText(
                      text: '3',
                      size: 20,
                      bold: true,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 3.0),
                    width: 40,
                    height: 40,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    child: CustomText(
                      text: 'M',
                      size: 20,
                      bold: true,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 3.0),
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    child: Icon(
                      FontAwesomeIcons.bolt,
                      color: Colors.black,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 3.0),
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    child: Icon(
                      FontAwesomeIcons.bone,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
