import 'package:dog_meet_app/src/screens/global/components/app_colors.dart';
import 'package:dog_meet_app/src/screens/meetup/pageview/meet/components/meet_up_nearby_feed.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sliding_sheet/sliding_sheet.dart';
import 'package:dog_meet_app/src/screens/global/components/text_styles.dart';
import 'package:dog_meet_app/src/screens/meetup/pageview/meet/components/meet_up_details_page.dart';
import 'package:dog_meet_app/src/screens/meetup/pageview/meet/components/meet_up_sliding_header.dart';
import 'package:dog_meet_app/src/screens/meetup/pageview/meet/components/meet_up_home_feed.dart';

class MeetUpPage extends StatefulWidget {
  final VoidCallback onMessagePressed;
  final VoidCallback onMapPressed;

  MeetUpPage({@required this.onMessagePressed, @required this.onMapPressed});

  @override
  _MeetUpPageState createState() => _MeetUpPageState();
}

class _MeetUpPageState extends State<MeetUpPage> with SingleTickerProviderStateMixin {
  SheetController slidingSheetController = SheetController();
  //TabController meetTabController;
  int _selectedTabIndex = 0;

  List<Tab> meetTabs = <Tab>[
    Tab(child: CustomText(text: 'Home', size: 15, color: null, bold: true)),
    Tab(child: CustomText(text: 'Nearby', size: 15, color: null, bold: true)),
  ];

  @override
  void initState() {
    super.initState();
    //meetTabController = TabController(length: meetTabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: meetTabs.length,
        child: Builder(builder: (BuildContext context) {
          final TabController meetTabController = DefaultTabController.of(context);
          meetTabController.addListener(() {
            if (!meetTabController.indexIsChanging) {
              if (meetTabController.index == 0) {
                print('Yeet youre home');
              } else if (meetTabController.index == 1) {
                print('Yeet youre nearby');
              }
            }
          });
          return Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: AppBar(
              flexibleSpace: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        colors: [
                      AppColors.colorPrimaryOrange,
                      AppColors.colorPrimaryYellow,
                    ])),
              ),
              elevation: 0,
              centerTitle: true,
              title: CustomText(
                text: 'Meet',
                size: 18,
                bold: true,
              ),
              leading: IconButton(
                  icon: Icon(Icons.location_on_outlined), onPressed: widget.onMapPressed),
              actions: <Widget>[
                IconButton(
                    icon: Icon(
                      FontAwesomeIcons.paperPlane,
                      size: 20,
                    ),
                    onPressed: widget.onMessagePressed
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
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: Row(
                      children: [
                        TabBar(
                          isScrollable: true,
                          unselectedLabelColor: Colors.black38,
                          labelColor: AppColors.colorBlack,
                          //controller: meetTabController,
                          indicatorSize: TabBarIndicatorSize.tab,
                          indicatorColor: Colors.white,
                          tabs: meetTabs,
                        ),
                        Spacer(),
                        IconButton(
                          icon: Icon(Icons.search),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(Icons.sort),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            body: SlidingSheet(
              controller: slidingSheetController,
              closeOnBackdropTap: true,
              closeOnBackButtonPressed: true,
              isBackdropInteractable: true,
              elevation: 3,
              cornerRadius: 15,
              liftOnScrollHeaderElevation: 5,
              //duration: Duration(milliseconds: 150),
              snapSpec: const SnapSpec(
                snap: true,
                snappings: [110, double.infinity],
                positioning: SnapPositioning.pixelOffset,
              ),
              body: TabBarView(
                //controller: meetTabController,
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
        }));
  }
}
