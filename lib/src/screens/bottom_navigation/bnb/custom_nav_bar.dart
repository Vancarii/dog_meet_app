import 'package:dog_meet_app/src/global_components/constants/constants.dart';
import 'package:dog_meet_app/src/global_components/themes/app_colors.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/meetup/meet/components/details/meet_up_details_sheet.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/meetup/meet/components/details/meet_up_sliding_header.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class CustomNavBar extends StatefulWidget {
  final Widget child;
  final double height;
  final Color backgroundColor;
  final Color selectedIconColor;
  final double selectedIconSize;
  final double iconSize;

  final Function(int index) onTap;

  const CustomNavBar({
    Key key,
    this.child,
    this.height = 60,
    this.backgroundColor,
    @required this.onTap,
    this.selectedIconColor = AppColors.colorPrimaryOrange,
    this.selectedIconSize = 28,
    this.iconSize = 24,
  }) : super(key: key);

  @override
  _CustomNavBarState createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  int _currentIndex = 2;

  List<IconData> _iconList = <IconData>[
    Icons.forum_outlined,
    Icons.store_outlined,
    FontAwesomeIcons.paw,
    Icons.notifications_outlined,
    FontAwesomeIcons.dog,
  ];

  List<IconData> _iconListTapped = <IconData>[
    Icons.forum,
    Icons.store,
    FontAwesomeIcons.paw,
    Icons.notifications,
    FontAwesomeIcons.dog,
  ];

  SheetController meetSheetController = SheetController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SlidingSheet(
        //color: AppColors.colorPrimaryOrange,
        controller: meetSheetController,
        closeOnBackdropTap: true,
        closeOnBackButtonPressed: true,
        isBackdropInteractable: true,
        //elevation: 5,
        cornerRadius: 30,
        //backdropColor: AppColors.colorBlack.withOpacity(0.5),
        //margin: const EdgeInsets.only(top: 10.0, left: 5.0, right: 5.0),
        //duration: Duration(milliseconds: 150),
        snapSpec: const SnapSpec(
          snap: true,
          snappings: [SnapSpec.headerFooterSnap, kMaxSnapPosition],
          initialSnap: SnapSpec.headerFooterSnap,
          positioning: SnapPositioning.pixelOffset,
        ),
        //body: widget.child,
        headerBuilder: (context, state) {
          return MeetUpSlidingHeader(
            slidingSheetController: meetSheetController,
          );
        },
        builder: (context, state) {
          return MeetUpDetailsSheet();
        },
        footerBuilder: (context, state) {
          return Container(
            height: widget.height,
            color: Theme.of(context).primaryColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                for (var index = 0; index <= _iconList.length - 1; index++)
                  Expanded(
                    child: Material(
                      child: IconButton(
                        highlightColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        splashColor: AppColors.colorBlack.withOpacity(0.4),
                        //customBorder: StadiumBorder(),
                        onPressed: () {
                          setState(() {
                            _currentIndex = index;
                            print(_currentIndex);
                            widget.onTap(index);
                          });
                        },
                        icon: _currentIndex == index
                            ? Icon(
                                _iconListTapped[index],
                                color: widget.selectedIconColor,
                                size: widget.selectedIconSize,
                              )
                            : Icon(
                                _iconList[index],
                                color: Theme.of(context).primaryColorLight,
                                size: widget.iconSize,
                              ),
                      ),
                    ),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}
