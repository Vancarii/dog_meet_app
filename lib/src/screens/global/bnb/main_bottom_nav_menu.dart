import 'package:animations/animations.dart';
import 'package:dog_meet_app/src/screens/forum/new/new_forum_post_page.dart';
import 'package:dog_meet_app/src/screens/global/bnb/animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:dog_meet_app/src/screens/forum/forums_app_bar.dart';
import 'package:dog_meet_app/src/screens/global/components/app_colors.dart';
//import 'package:dog_meet_app/src/screens/global/route_transitions/slideup_route_transition.dart';
import 'package:dog_meet_app/src/screens/market/market_app_bar.dart';
import 'package:dog_meet_app/src/screens/market/new/new_market_post_page.dart';
import 'package:dog_meet_app/src/screens/meetup/meet/meet_up_page.dart';
import 'package:dog_meet_app/src/screens/meetup/meet/new/new_meet_up_post_page.dart';
import 'package:dog_meet_app/src/screens/notification/pageview/notification_pageview.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:dog_meet_app/src/screens/profile/account_profile_page.dart';
import 'package:provider/provider.dart';
import 'package:dog_meet_app/src/provider/fab_message_notifier.dart';

//This file stays the same throughout all 5 pages of the bottom navigation
//the only thing that changes is the body of the scaffold which is set to _currentSelectedScreenIndex and switches
//based on the index of the bottom navigation
//currentselectedScreenIndex is set to 2 so that it starts at the meetuppage when the app loads up for the first time
//indexedStacked is used so that the pages stay the same state when we navigate to a different page and back
//or else the state of the pages will reset everytime we leave, eg: scroll position will revert

class MainBottomNavMenu extends StatefulWidget {
  static const String id = 'main_bottom_nav_menu';

  @override
  _MainBottomNavMenuState createState() => _MainBottomNavMenuState();
}

class _MainBottomNavMenuState extends State<MainBottomNavMenu> with SingleTickerProviderStateMixin {
  var _currentSelectedScreenIndex = 2;

  IconData fabIcon = FontAwesomeIcons.paw;

  final _pageOptions = [
    ForumsAppBar(),
    MarketAppBar(),
    MeetUpPage(),
    NotificationsPageView(),
    AccountProfilePage(),
  ];

  List<IconData> bottomNavIcons = <IconData>[
    Icons.forum,
    Icons.store,
    FontAwesomeIcons.paw,
    Icons.notifications_rounded,
    FontAwesomeIcons.dog,
  ];

  List<IconData> newPostIcons = <IconData>[
    Icons.forum,
    Icons.store,
    FontAwesomeIcons.paw,
    FontAwesomeIcons.solidPaperPlane,
    FontAwesomeIcons.solidPaperPlane,
    Icons.add_box_outlined,
  ];

  _navBarOnTap(int index) {
    setState(() {
      print('index' + index.toString());
      _currentSelectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => FabMessageNotifier(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        extendBodyBehindAppBar: true,
        extendBody: true,
        floatingActionButton:
            /*_currentSelectedScreenIndex == 0 ||
                _currentSelectedScreenIndex == 1 ||
                _currentSelectedScreenIndex == 2
            ? fabOpenContainer(_currentSelectedScreenIndex, newPostIcons)
            : */
            AnimatedFab(
                iconList: newPostIcons,
                pageIndex: _currentSelectedScreenIndex,
                fabTapCallback: () {
                  setState(() {
                    _currentSelectedScreenIndex = 3;
                  });
                }),
        floatingActionButtonLocation: FloatingActionButtonLocation.miniEndDocked,
        bottomNavigationBar: SafeArea(
          child: AnimatedBottomNavigationBar(
            //gapLocation: GapLocation.center,
            inactiveColor: Colors.black26,
            height: 50,
            backgroundColor: AppColors.colorWhite,
            activeColor: AppColors.colorPrimaryOrange,
            splashColor: Colors.grey[350],
            splashRadius: 45,
            notchSmoothness: NotchSmoothness.softEdge,
            leftCornerRadius: 10,
            icons: bottomNavIcons,
            activeIndex: _currentSelectedScreenIndex,
            onTap: _navBarOnTap,
          ),
        ),
        body: IndexedStack(children: _pageOptions, index: _currentSelectedScreenIndex),
      ),
    );
  }
}

class AnimatedFab extends StatefulWidget {
  final List<IconData> iconList;
  final int pageIndex;
  final VoidCallback fabTapCallback;

  AnimatedFab({
    required this.iconList,
    required this.pageIndex,
    required this.fabTapCallback,
  });

  @override
  _AnimatedFabState createState() => _AnimatedFabState();
}

class _AnimatedFabState extends State<AnimatedFab> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      splashColor: AppColors.colorPrimaryOrange,
      elevation: 6,
      highlightElevation: 0,
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 250),
        switchInCurve: Curves.easeInOutSine,
        switchOutCurve: Curves.easeOutSine,
        child: Icon(
          Provider.of<FabMessageNotifier>(context).messageFabClicked == true &&
                  widget.pageIndex == 3
              ? widget.iconList[5]
              : widget.iconList[widget.pageIndex],
          color: Colors.white,
          key: UniqueKey(),
        ),
      ),
      onPressed: widget.pageIndex == 3
          ? () {
              Provider.of<FabMessageNotifier>(context, listen: false).messageFabChanged(true);
            }
          : widget.pageIndex == 4
              ? widget.fabTapCallback
              : null, //TODO: add hero widget animation to post pages
    );
  }
}

/*OpenContainer fabOpenContainer(int pageIndex, List shownIcons) {
  return OpenContainer(
    openBuilder: (BuildContext context, void Function({Object returnValue}) action) {
      if (pageIndex == 0) {
        return NewForumPostPage();
      } else if (pageIndex == 1) {
        return NewListingPage();
      } else {
        return NewMeetUpPostPage();
      }
    },
    closedElevation: 6.0,
    closedShape: CircleBorder(),
    closedColor: AppColors.colorPrimaryOrange,
    closedBuilder: (BuildContext context, void Function() action) {
      return Container(
        width: 55,
        height: 55,
        //color: AppColors.colorLightCoral,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.colorPrimaryOrange,
        ),
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 250),
          switchInCurve: Curves.easeInOutSine,
          switchOutCurve: Curves.easeOutSine,
          child: Icon(
            shownIcons[pageIndex],
            color: Colors.white,
            key: UniqueKey(),
          ),
        ),
      );
    },
  );
}*/
