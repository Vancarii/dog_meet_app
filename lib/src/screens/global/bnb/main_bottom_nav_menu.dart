import 'package:dog_meet_app/src/screens/global/bnb/animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:dog_meet_app/src/screens/forum/forums_app_bar.dart';
import 'package:dog_meet_app/src/screens/global/components/app_colors.dart';
import 'package:dog_meet_app/src/screens/market/market_app_bar.dart';
import 'package:dog_meet_app/src/screens/meetup/meet/meet_up_page.dart';
import 'package:dog_meet_app/src/screens/notification/pageview/notification_pageview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:dog_meet_app/src/screens/profile/account_profile_page.dart';

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

class _MainBottomNavMenuState extends State<MainBottomNavMenu> with TickerProviderStateMixin {
  var _currentSelectedScreenIndex = 2;

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
    FontAwesomeIcons.paw,
  ];

/*  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.elasticOut,
  );

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      extendBody: true,
      floatingActionButton: FloatingActionButton(
        splashColor: AppColors.colorPrimaryOrange,
        elevation: 2,
        highlightElevation: 0,
        child: Container(
          width: 60,
          height: 60,
          //color: AppColors.colorLightCoral,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.colorPrimaryOrange,
          ),
          child: Icon(
            newPostIcons[_currentSelectedScreenIndex],
            color: Colors.white,
          ),
        ),
        onPressed: () {
          setState(() {
            //TODO: GO TO PAGE THAT POSTS TO EITHER OF THE 3 PAGES
          });
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
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
        onTap: (index) {
          setState(() {
            print('index' + index.toString());
            _currentSelectedScreenIndex = index;
          });
        },
      ),
      body: IndexedStack(children: _pageOptions, index: _currentSelectedScreenIndex),
    );
  }
}
