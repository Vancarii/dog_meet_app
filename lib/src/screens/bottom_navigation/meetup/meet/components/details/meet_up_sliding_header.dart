import 'package:dog_meet_app/src/global_components/components/app_colors.dart';
import 'package:dog_meet_app/src/global_components/components/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

import '../../meet_up_page.dart';

class MeetUpSlidingHeader extends StatelessWidget {
  const MeetUpSlidingHeader({
    Key? key,
    required this.slidingSheetController,
  }) : super(key: key);

  final SheetController slidingSheetController;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (slidingSheetController.state!.isCollapsed == true) {
          slidingSheetController.snapToExtent(maxSnapPosition,
              duration: Duration(milliseconds: 150));
        } else {
          slidingSheetController.snapToExtent(minSnapPosition,
              duration: Duration(milliseconds: 150));
        }
      },
      child: Container(
        decoration: BoxDecoration(
          //color: AppColors.colorLightCoral,
          gradient: AppColors.orangeYellowGradient,
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
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(),
                  VerticalDivider(
                    indent: 10,
                    endIndent: 10,
                    color: Colors.black54,
                    thickness: 1,
                  ),
                  Expanded(
                    child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 2.0),
                        //width: 40,
                        height: 40,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        child: FittedBox(
                          child: CustomText(
                            text: '3:30 pm',
                            size: 18,
                            bold: true,
                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          ),
                        )),
                  ),
                  Expanded(
                    child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 2.0),
                        //width: 40,
                        height: 40,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        child: FittedBox(
                          child: CustomText(
                            text: '3 going',
                            size: 18,
                            bold: true,
                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          ),
                        )),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                        margin: const EdgeInsets.only(left: 2.0),
                        //width: double.infinity,
                        height: 40,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        child: FittedBox(
                          child: CustomText(
                            text: 'Glen Park ~ 5km',
                            size: 15,
                            bold: true,
                            alignment: TextAlign.center,
                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          ),
                        )),
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
