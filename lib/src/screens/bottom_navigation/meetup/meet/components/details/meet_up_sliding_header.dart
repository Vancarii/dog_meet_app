import 'package:another_flushbar/flushbar.dart';
import 'package:dog_meet_app/src/global_components/components/app_colors.dart';
import 'package:dog_meet_app/src/global_components/components/text_styles.dart';
import 'package:dog_meet_app/src/global_components/constants/constants.dart';
import 'package:dog_meet_app/src/provider/fab_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class MeetUpSlidingHeader extends StatefulWidget {
  const MeetUpSlidingHeader({
    Key key,
    @required this.slidingSheetController,
  }) : super(key: key);

  final SheetController slidingSheetController;

  @override
  _MeetUpSlidingHeaderState createState() => _MeetUpSlidingHeaderState();
}

class _MeetUpSlidingHeaderState extends State<MeetUpSlidingHeader> {
  bool isAttending = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (widget.slidingSheetController.state.isCollapsed == true) {
          widget.slidingSheetController
              .snapToExtent(kMaxSnapPosition, duration: Duration(milliseconds: 150));
        } else {
          widget.slidingSheetController
              .snapToExtent(kMinSnapPosition, duration: Duration(milliseconds: 150));
        }

        Provider.of<FabNotifier>(context, listen: false).meetUpSheetExpanded(true);
      },
      child: Stack(
        children: [
          Container(
            height: 80,
            width: double.infinity,
            color: AppColors.colorPrimaryOrange,
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
                  margin: const EdgeInsets.only(left: 20.0, bottom: 10.0, right: 10.0),
                  child: CustomText(
                    text: 'Meet Up Details',
                    size: 26,
                    bold: true,
                    color: AppColors.colorDarkSlateGrey,
                    // padding: const EdgeInsets.only(left: 20.0, bottom: 10.0),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 12.0,
            right: 12.0,
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 150),
              transitionBuilder: (Widget child, Animation<double> animation) {
                return ScaleTransition(child: child, scale: animation);
              },
              child: FloatingActionButton(
                //this herotag is important so that there wont be an error
                heroTag: null,
                key: UniqueKey(),
                mini: true,
                onPressed: () {
                  setState(() {
                    isAttending = !isAttending;
                  });

                  Flushbar(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    margin: const EdgeInsets.all(10.0),
                    title: isAttending == true ? 'Cancelled Attendance' : 'You\'re Going!',
                    message: isAttending == true
                        ? 'That\'s Okay! Find someone else to play!'
                        : 'It\'s great to meet more friends!',
                    icon: isAttending == true
                        ? Icon(
                            Icons.close_rounded,
                            size: 30,
                            color: AppColors.colorRed,
                          )
                        : Icon(
                            Icons.check_rounded,
                            size: 30,
                            color: AppColors.colorBrightGreen,
                          ),
                    duration: Duration(milliseconds: 2500),
                    animationDuration: Duration(milliseconds: 500),
                  )..show(context);
                },
                backgroundColor:
                    isAttending == true ? AppColors.colorRed : AppColors.colorBrightGreen,
                focusElevation: 0,
                highlightElevation: 0,
                splashColor: AppColors.colorPrimaryOrange,
                child: isAttending == true
                    ? Icon(
                        Icons.close_rounded,
                        size: 30,
                        color: AppColors.colorWhite,
                      )
                    : Icon(
                        Icons.check_rounded,
                        size: 30,
                        color: AppColors.colorWhite,
                      ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/*class SlidingSheetClipper extends CustomClipper<Path> {
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
}*/
