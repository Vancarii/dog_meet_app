import 'package:dog_meet_app/src/screens/global/components/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

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
          slidingSheetController.snapToExtent(double.infinity,
              duration: Duration(milliseconds: 150));
        } else {
          slidingSheetController.snapToExtent(110, duration: Duration(milliseconds: 150));
        }
      },
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.all(10),
        height: 56,
        width: double.infinity,
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(),
            Padding(
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
                  /*Text(
                        'Account Name',
                        style: AppTextStyles.h12BlackBold,
                        textAlign: TextAlign.start,
                      ),*/
                  CustomText(
                    text: 'Golden Retriever',
                    size: 15,
                    bold: true,
                    alignment: TextAlign.start,
                  ),
                  /*Text(
                        'Golden Retriever',
                        style: AppTextStyles.h15BlackBold,
                        textAlign: TextAlign.start,
                      ),*/
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
