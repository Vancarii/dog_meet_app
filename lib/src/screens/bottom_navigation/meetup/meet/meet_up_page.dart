import 'package:dog_meet_app/src/global_components/themes/app_colors.dart';
import 'package:dog_meet_app/src/global_components/widgets/text_styles.dart';
import 'package:dog_meet_app/src/global_components/route_transitions/route_transitions.dart';
import 'package:dog_meet_app/src/provider/provider_notifier.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/bnb/main_bottom_nav_menu.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/meetup/map/map_page_android.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/meetup/map/map_page_ios.dart';
import 'package:dog_meet_app/src/screens/sub_screens/search/search_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'components/tabs/home/meet_up_home_feed.dart';
import 'components/tabs/nearby/meet_up_nearby_feed.dart';
import 'components/tabs/nearby/nearby_drawer_content.dart';

//This file is the meet up pages app bar and body

class MeetUpPage extends StatefulWidget {
  @override
  _MeetUpPageState createState() => _MeetUpPageState();
}

class _MeetUpPageState extends State<MeetUpPage> with TickerProviderStateMixin {
  TabController meetTabController;

  //list of the tabs that are shown at the bottom of the app bar
  List<Tab> meetTabs = <Tab>[
    Tab(child: CustomText(text: 'Home', size: 15, color: null, bold: true)),
    Tab(child: CustomText(text: 'Explore', size: 15, color: null, bold: true)),
  ];

  @override
  void initState() {
    super.initState();
    meetTabController = TabController(length: meetTabs.length, vsync: this);
  }

  @override
  void dispose() {
    meetTabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Local dragStartDetail.
    DragStartDetails dragStartDetails;
    // Current drag instance - should be instantiated on overscroll and updated alongside.
    Drag drag;
    return Scaffold(
      endDrawer: NearbyDrawerContent(),
      appBar: meetUpAppBar(),
      body: NotificationListener(
        onNotification: (notification) {
          if (notification is ScrollStartNotification) {
            print('scroll start');
            dragStartDetails = notification.dragDetails;
          }
          if (notification is OverscrollNotification) {
            print('Overscroll');
            drag = mainPageViewController.position.drag(dragStartDetails, () {});
            drag.update(notification.dragDetails);
          }
          if (notification is ScrollEndNotification) {
            print('scroll end');
            drag?.cancel();
          }
          return true;
        },
        child: TabBarView(
          controller: meetTabController,
          children: [
            MeetUpHomeFeed(),
            MeetUpNearbyFeed(),
          ],
        ),
      ),
    );
  }

  Widget meetUpAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      centerTitle: true,
      title: Text(
        'DOGGOD',
        style: TextStyle(fontFamily: 'Ceviche One', fontSize: 28),
      ),
      leading: IconButton(
          icon: Icon(Icons.location_on_outlined),
          onPressed: () {
            mainPageViewController.animateToPage(0,
                duration: Duration(milliseconds: 200), curve: Curves.linear);
          }),
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.search,
          ),
          onPressed: () {
            Navigator.of(context).push(RouteTransitions().slideUpTransitionType(SearchBarScreen()));
          },
        ),
      ],
      bottom: meetUpTabBar(),
    );
  }

  Widget meetUpTabBar() {
    return TabBar(
      controller: meetTabController,
      unselectedLabelColor: Provider.of<ProviderNotifier>(context).isDarkMode == true
          ? AppColors.colorWhite.withOpacity(0.3)
          : AppColors.colorOffBlack.withOpacity(0.3),
      labelColor: AppColors.colorPrimaryOrange,
      indicatorSize: TabBarIndicatorSize.tab,
      indicatorColor: AppColors.colorPrimaryOrange,
      indicatorWeight: 3,
      tabs: meetTabs,
    );
  }
}
