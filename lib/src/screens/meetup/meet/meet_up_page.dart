import 'package:dog_meet_app/src/screens/global/components/app_colors.dart';
import 'package:dog_meet_app/src/screens/meetup/meet/components/tabs/home/home_drawer_content.dart';
import 'package:dog_meet_app/src/screens/meetup/meet/components/tabs/nearby/nearby_drawer_content.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sliding_sheet/sliding_sheet.dart';
import 'package:dog_meet_app/src/screens/global/components/text_styles.dart';
import 'package:dog_meet_app/src/screens/meetup/meet/components/details/meet_up_details_page.dart';
import 'package:dog_meet_app/src/screens/meetup/meet/components/details/meet_up_sliding_header.dart';
import 'components/tabs/home/meet_up_home_feed.dart';
import 'components/tabs/nearby/meet_up_nearby_feed.dart';

//This file is the meet up pages app bar and bottom sliding sheet that links to the other components

//This is placed here so that they are global
//variable names make it easier to reuse
const double minSnapPosition = 115;
const double maxSnapPosition = double.infinity;
/*const double minSnapPosition = 0.15;
const double maxSnapPosition = 0.99;*/

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

class _MeetUpPageState extends State<MeetUpPage> with SingleTickerProviderStateMixin {
  //controller for the bottom sliding up sheet / MeetUp Details Page
  SheetController slidingSheetController = SheetController();

  //list of the tabs that are shown at the bottom of the app bar
  List<Tab> meetTabs = <Tab>[
    Tab(child: CustomText(text: 'Home', size: 15, color: null, bold: true)),
    Tab(child: CustomText(text: 'Nearby', size: 15, color: null, bold: true)),
  ];

  //for the preferences / filter endDrawer
  selectedMeetTab selectedTab = selectedMeetTab.HomeTab;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: meetTabs.length,
      //builder to check which tabbar tab is clicked. nothing is done here yet
      child: Builder(
        builder: (BuildContext context) {
          final TabController meetTabController = DefaultTabController.of(context);
          meetTabController.addListener(() {
            if (!meetTabController.indexIsChanging) {
              setState(() {
                if (meetTabController.index == 0) {
                  print('Yeet youre home');
                  selectedTab = selectedMeetTab.HomeTab;
                } else if (meetTabController.index == 1) {
                  print('Yeet youre nearby');
                  selectedTab = selectedMeetTab.NearbyTab;
                }
              });
            }
          });
          return Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: AppBar(
              automaticallyImplyLeading: false,
              elevation: 0,
              centerTitle: true,
              title: CustomText(
                text: 'Meet',
                size: 18,
                bold: true,
              ),
              leading: IconButton(icon: Icon(Icons.location_on_outlined), onPressed: () {}),
              actions: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.search,
                  ),
                  onPressed: () {},
                  //onPressed: widget.onMessagePressed
                  // do something
                ),
              ],
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(35),
                child: Theme(
                  data: ThemeData(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                  ),
                  child: Column(
                    children: [
                      TabBar(
                        //hide the sliding sheet when it is expanded and the user taps on one of the tabbar buttons
                        onTap: (index) {
                          if (slidingSheetController.state.isExpanded) {
                            print('sliding sheet true');
                            slidingSheetController.snapToExtent(minSnapPosition,
                                duration: Duration(milliseconds: 300), clamp: true);
                          }
                        },
                        isScrollable: true,
                        unselectedLabelColor: Colors.black38,
                        labelColor: AppColors.colorBlack,
                        //controller: meetTabController,
                        indicatorSize: TabBarIndicatorSize.tab,
                        indicatorColor: AppColors.colorPrimaryOrange,
                        indicatorWeight: 4,
                        tabs: meetTabs,
                      ),
                      Container(
                        width: double.infinity,
                        height: 0.5,
                        color: Colors.black12,
                      )
                    ],
                  ),
                ),
              ),
            ),
            endDrawer: selectedTab == selectedMeetTab.HomeTab
                ? HomeDrawerContent()
                : NearbyDrawerContent(),
            //This is the sliding sheet that shows whenever a meetup post is clicked.
            //the body of the sliding sheet is wrapped in a tabbar view so that it can change
            //pages. MeetUpHomeFeed and nearby feed have the slidingSheetController passed through
            //so that it can activate the sliding sheet and expand it or collapse it there.
            //the sliderheader is the small part showing when the sliding sheet is collapsed.
            //
            body: SlidingSheet(
              //color: AppColors.colorLightCoral,
              controller: slidingSheetController,
              closeOnBackdropTap: true,
              closeOnBackButtonPressed: true,
              isBackdropInteractable: true,
              elevation: 5,
              shadowColor: Colors.black54,
              cornerRadius: 15,
              liftOnScrollHeaderElevation: 5,
              //duration: Duration(milliseconds: 150),
              snapSpec: const SnapSpec(
                snap: true, snappings: [minSnapPosition, maxSnapPosition],
                //snappings: [minSnapPosition, SnapSpec.expanded],
                positioning: SnapPositioning.pixelOffset,
              ),
              body: TabBarView(
                children: [
                  MeetUpHomeFeed(slidingSheetController: slidingSheetController),
                  MeetUpNearbyFeed(slidingSheetController: slidingSheetController),
                ],
              ),
              headerBuilder: (context, state) {
                return MeetUpSlidingHeader(slidingSheetController: slidingSheetController);
              },
              builder: (context, state) {
                return MeetUpDetailsPage();
              },
            ),
          );
        },
      ),
    );
  }
}
