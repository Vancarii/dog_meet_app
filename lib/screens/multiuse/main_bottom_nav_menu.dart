import 'package:dogmeet_app/screens/meetup/meet_up_feed_page.dart';
import 'package:dogmeet_app/screens/forum/forums_feed_page.dart';
import 'package:dogmeet_app/screens/market/market_app_bar.dart';
import 'package:dogmeet_app/screens/notification/notifications_feed_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/services.dart';
import '../profile/account_profile_page.dart';

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

class _MainBottomNavMenuState extends State<MainBottomNavMenu> {
  var _currentSelectedScreenIndex = 2;

  final _pageOptions = [
    ForumsFeedPage(),
    MarketAppBar(),
    MeetUpPageView(),
    NotificationsPage(),
    AccountProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Colors.transparent));
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      extendBody: true,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.post_add),
        onPressed: () {
          setState(() {
            //TODO: GO TO PAGE THAT POSTS TO EITHER OF THE 3 PAGES
          });
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        backgroundColor: Color(0xfffc816a),
        activeColor: Colors.white,
        icons: <IconData>[
          Icons.forum,
          Icons.store,
          FontAwesomeIcons.paw,
          Icons.notifications_rounded,
          FontAwesomeIcons.dog,
        ],
        activeIndex: _currentSelectedScreenIndex,
        onTap: (index) {
          setState(() {
            print('index' + index.toString());
            return _currentSelectedScreenIndex = index;
          });
        },
      ),
      body: IndexedStack(
          children: _pageOptions, index: _currentSelectedScreenIndex),
    );
  }
}
