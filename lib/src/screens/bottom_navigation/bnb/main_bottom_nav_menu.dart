import 'package:dog_meet_app/src/global_components/components/app_colors.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/forum/forums_app_bar.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/market/market_app_bar.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/meetup/meet/meet_up_page.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/notification/pageview/notification_pageview.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/profile/account_profile_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:dog_meet_app/src/provider/provider_notifier.dart';
import 'animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'animated_fab.dart';

//This file stays the same throughout all 5 pages of the bottom navigation
//the only thing that changes is the body of the scaffold which is set to _currentSelectedScreenIndex and switches
//based on the index of the bottom navigation
//currentSelectedScreenIndex is set to 2 so that it starts at the meetuppage when the app loads up for the first time
//indexedStacked is used so that the pages stay the same state when we navigate to a different page and back
//or else the state of the pages will reset everytime we leave, eg: scroll position will revert

//The ChangeNotifier provider is in the main.dart since it needs to be higher than this mainBottomNavMenu but
//that can be changed if there are other screens
//the provider links to fabMessageNotifier
//for the fab, it calls animated_fab which handles most of the changing of the icons
//the notification_pageview is also listening to the provider and changes the screen depending on the
//changes to the provider that the animated_fab does on the onTap function.

class MainBottomNavMenu extends StatefulWidget {
  static const String id = 'main_bottom_nav_menu';

  @override
  _MainBottomNavMenuState createState() => _MainBottomNavMenuState();
}

class _MainBottomNavMenuState extends State<MainBottomNavMenu> with SingleTickerProviderStateMixin {
  //start the app at the Meet Up page which is index 2
  var _currentSelectedScreenIndex = 2;

  //where each bottom nav bar tab goes to
  final _pageOptions = [
    ForumsAppBar(),
    MarketAppBar(),
    MeetUpPage(),
    NotificationsPageView(),
    AccountProfilePage(),
  ];

  //these are whats shown on the bottom nav bar
  List<IconData> bottomNavIcons = <IconData>[
    Icons.forum,
    Icons.store,
    FontAwesomeIcons.paw,
    Icons.notifications_rounded,
    FontAwesomeIcons.dog,
  ];

  //these are what is shown on the fab
  List<IconData> fabIcons = <IconData>[
    Icons.forum,
    Icons.store,
    FontAwesomeIcons.paw,
    //these are the same since the icons are the same for the
    //notifications screen and the profile screen
    FontAwesomeIcons.solidPaperPlane,
    FontAwesomeIcons.solidPaperPlane,
    //this icon is for the new message icon in the messages page
    Icons.add_box_outlined,
  ];

  //onTap for the bottom nav bar
  _navBarOnTap(int index) {
    setState(() {
      //print('index' + index.toString());
      _currentSelectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      extendBody: true,
      floatingActionButton: AnimatedFab(
          iconList: fabIcons,
          pageIndex: _currentSelectedScreenIndex,
          fabTapCallback: () {
            setState(() {
              //this all happens when the fab icon is tapped while on the profiles screen
              //these two lines change the screen to the notifications screen
              //then sets messagefab to true which slides the screen to the messages screen
              _currentSelectedScreenIndex = 3;
              Provider.of<ProviderNotifier>(context, listen: false).messageFabChanged(true);
            });
          }),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndDocked,
      bottomNavigationBar: SafeArea(
        child: AnimatedBottomNavigationBar(
          //gapLocation: GapLocation.center,
          inactiveColor: Theme.of(context).primaryColorLight.withOpacity(0.4),
          height: kBottomNavigationBarHeight,
          backgroundColor: Theme.of(context).primaryColor,
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
      //indexstacked is so that all the screens are preloaded when the app first starts and that
      //the states and scroll positions are saved when you leave to a different screen and come back
      body: IndexedStack(
        children: _pageOptions,
        index: _currentSelectedScreenIndex,
      ),
    );
  }
}
