import 'dart:ui';
import 'package:dog_meet_app/src/global_components/themes/app_colors.dart';
import 'package:dog_meet_app/src/global_components/widgets/text_styles.dart';
import 'package:dog_meet_app/src/global_components/constants/constants.dart';
import 'package:dog_meet_app/src/global_components/route_transitions/route_transitions.dart';
import 'package:dog_meet_app/src/provider/provider_notifier.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/meetup/map/map_page_android.dart';
import 'package:dog_meet_app/src/global_components/delegate/sliver_tab_delegate.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/meetup/map/map_page_ios.dart';
import 'package:dog_meet_app/src/screens/sub_screens/search/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:sliding_sheet/sliding_sheet.dart';
import 'components/details/meet_up_details_page.dart';
import 'components/details/meet_up_sliding_header.dart';
import 'components/tabs/home/meet_up_home_feed.dart';
import 'components/tabs/nearby/meet_up_nearby_feed.dart';
import 'components/tabs/nearby/nearby_drawer_content.dart';

//This file is the meet up pages app bar and bottom sliding sheet that links to the other components

//This enum is used for the filter button
// the builder that returns which tab it is currently on changes the variable selectedTab
// to whichever enum the tab is showing
// the endDrawer then shows a different drawer depending on which tab is shown
enum selectedMeetTab {
  HomeTab,
  NearbyTab,
}

class MeetUpPage extends StatefulWidget {
  @override
  _MeetUpPageState createState() => _MeetUpPageState();
}

class _MeetUpPageState extends State<MeetUpPage> with TickerProviderStateMixin {
  //controller for the bottom sliding up sheet / MeetUp Details Page
  SheetController meetSlidingSheetController = SheetController();

  TabController meetTabController;

  //list of the tabs that are shown at the bottom of the app bar
  List<Tab> meetTabs = <Tab>[
    Tab(child: CustomText(text: 'Home', size: 15, color: null, bold: true)),
    Tab(child: CustomText(text: 'Explore', size: 15, color: null, bold: true)),
  ];

  //for the preferences / filter endDrawer
  selectedMeetTab selectedTab = selectedMeetTab.HomeTab;

  bool sheetIsExpanded = false;

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
    /*return Builder(
      builder: (BuildContext context) {
        meetTabController.addListener(() {
          if (!meetTabController.indexIsChanging) {
            if (meetTabController.index == 0) {
              print('Yeet youre home');
              selectedTab = selectedMeetTab.HomeTab;
            } else if (meetTabController.index == 1) {
              print('Yeet youre nearby');
              selectedTab = selectedMeetTab.NearbyTab;
            }
          }
        });*/
    return Scaffold(
      //resizeToAvoidBottomInset: true,
      endDrawer: NearbyDrawerContent(),
      //THIS APPBAR IS CRUCIAL FOR THE STATUS BAR COLOR
      //ALTHOUGH THE APPBAR IS NOT THERE, ITS FOR THE STATUS BAR
      appBar: meetUpAppBar(),
      /*AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 0,
      ),*/

      //This is the sliding sheet that shows whenever a meetup post is clicked.
      //the body of the sliding sheet is wrapped in a tabbar view so that it can change
      //pages. MeetUpHomeFeed and nearby feed have the slidingSheetController passed through
      //so that it can activate the sliding sheet and expand it or collapse it there.
      //the sliderheader is the small part showing when the sliding sheet is collapsed.
      //
      body: TabBarView(
        controller: meetTabController,
        children: [
          MeetUpHomeFeed(slidingSheetController: meetSlidingSheetController),
          MeetUpNearbyFeed(slidingSheetController: meetSlidingSheetController),
        ],
      ),
      //body: SafeArea(bottom: false, child: meetUpSheet()),
    );
    //},
    //);
  }

  Widget meetUpSheet() {
    return SlidingSheet(
      /*listener: (state) {
              setState(() {
                if (state.isExpanded) {
                  sheetIsExpanded = true;
                } else if (state.isCollapsed) {
                  sheetIsExpanded = false;
                }
              });
            },*/
      color: AppColors.colorPrimaryOrange,
      controller: meetSlidingSheetController,
      closeOnBackdropTap: true,
      closeOnBackButtonPressed: true,
      isBackdropInteractable: true,
      elevation: 5,
      cornerRadius: 30,
      //backdropColor: AppColors.colorBlack.withOpacity(0.5),
      liftOnScrollHeaderElevation: 5,
      margin: const EdgeInsets.only(top: 10.0, left: 5.0, right: 5.0),
      //duration: Duration(milliseconds: 150),
      snapSpec: const SnapSpec(
        snap: true,
        snappings: [0, kMinSnapPosition, kMaxSnapPosition],
        initialSnap: kMinSnapPosition,
        positioning: SnapPositioning.pixelOffset,
      ),
      headerBuilder: (context, state) {
        return MeetUpSlidingHeader(
            slidingSheetController: meetSlidingSheetController);
      },
      builder: (context, state) {
        return MeetUpDetailsPage();
      },
    );
  }

  Widget meetUpAppBar() {
    return AppBar(
      //pinned: true,
      systemOverlayStyle: SystemUiOverlayStyle.light,
      //backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      elevation: 0,
      centerTitle: true,
      title: CustomText(
        text: 'Meet',
        size: 18,
        bold: true,
      ),
      leading: IconButton(
          icon: Icon(Icons.location_on_outlined),
          onPressed: () {
            Navigator.push(
              context,
              RouteTransitions().slideLeftToRightJoinedTransitionType(
                MeetUpPage(),
                MapPageIos(),
              ),
            );
          }),
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.search,
          ),
          onPressed: () {
            Navigator.of(context).push(
                RouteTransitions().slideUpTransitionType(SearchBarScreen()));
          },
          //onPressed: widget.onMessagePressed
          // do something
        ),
      ],
      bottom: meetUpTabBar(),
    );
  }

  Widget meetUpTabBar() {
    return TabBar(
      controller: meetTabController,
      //hide the sliding sheet when it is expanded and the user taps on one of the tabbar buttons
      onTap: (index) {
        if (meetSlidingSheetController.state.isExpanded) {
          print('sliding sheet true');
          meetSlidingSheetController.snapToExtent(kMinSnapPosition,
              duration: Duration(milliseconds: 300), clamp: true);
        }
        print('offset: ' + meetTabController.animation.value.toString());
      },
      //isScrollable: true,
      unselectedLabelColor:
          Provider.of<ProviderNotifier>(context).isDarkMode == true
              ? AppColors.colorWhite.withOpacity(0.3)
              : AppColors.colorOffBlack.withOpacity(0.3),
      labelColor: AppColors.colorPrimaryOrange,
      //controller: meetTabController,
      indicatorSize: TabBarIndicatorSize.tab,
      indicatorColor: AppColors.colorPrimaryOrange,
      indicatorWeight: 3,
      tabs: meetTabs,
    );
  }
}
