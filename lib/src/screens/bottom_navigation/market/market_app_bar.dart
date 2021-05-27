import 'package:dog_meet_app/src/global_components/themes/app_colors.dart';
import 'package:dog_meet_app/src/global_components/widgets/text_styles.dart';
import 'package:dog_meet_app/src/global_components/route_transitions/route_transitions.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/market/filter_drawer/market_filter_drawer.dart';
import 'package:dog_meet_app/src/screens/sub_screens/search/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:flutter/services.dart';

import 'body/market_all_page.dart';
import 'body/market_new_page.dart';
import 'body/market_used_page.dart';

//This page only consists of the appbar in the scaffold for the market page
//the tab bar is the MarketTabBar linked through the body of the scaffold below
//since the body of the page changes depending on which tab is pressed, eg: All, New, or Used,
//the body is linked through the MarketTabBar and the OnPressed of the tabs
//GO TO MARKETTABBAR TO SEE CODE FOR THE BODY OF THE MARKET PLACE PAGE

class MarketAppBar extends StatefulWidget {
  static const String id = 'marketplace_feed_page';

  @override
  _MarketAppBarState createState() => _MarketAppBarState();
}

class _MarketAppBarState extends State<MarketAppBar>
    with SingleTickerProviderStateMixin {
  TabController _marketTabController;

  List<Tab> marketTabs = <Tab>[
    Tab(
      child: CustomText(text: 'All', size: 15, color: null, bold: true),
    ),
    Tab(
      child: CustomText(text: 'New', size: 15, color: null, bold: true),
    ),
    Tab(
      child: CustomText(text: 'Used', size: 15, color: null, bold: true),
    ),
  ];

  @override
  void initState() {
    super.initState();
    _marketTabController =
        TabController(length: marketTabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: marketAppBar(),
      body: TabBarView(
        controller: _marketTabController,
        children: [
          MarketAllPage(),
          MarketNewPage(),
          MarketUsedPage(),
        ],
      ),
      endDrawer: Drawer(
        child: MarketFilterDrawer(),
      ),
    );

    //MarketBodyTabs();
  }

  AppBar marketAppBar() {
    return AppBar(
      brightness: Brightness.light,
      systemOverlayStyle: SystemUiOverlayStyle.light,
      flexibleSpace: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [
              AppColors.colorOrange,
              AppColors.colorPrimaryYellow,
            ])),
      ),
      elevation: 0,
      //centerTitle: true,
      title: CustomText(
        text: 'Market',
        size: 18,
        bold: true,
        color: AppColors.colorOffBlack,
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.search,
            color: AppColors.colorOffBlack,
          ),
          onPressed: () {
            Navigator.of(context).push(
                RouteTransitions().slideUpTransitionType(SearchBarScreen()));
          },
        ),
        Builder(
          builder: (context) => IconButton(
            icon: Icon(
              Icons.sort,
              color: AppColors.colorOffBlack,
            ),
            onPressed: () => Scaffold.of(context).openEndDrawer(),
            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          ),
        ),
      ],
      bottom: marketTabBar(),
    );
  }

  PreferredSize marketTabBar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(35),
      child: Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: TabBar(
          unselectedLabelColor: Colors.black38,
          labelColor: Theme.of(context).primaryColorLight,
          controller: _marketTabController,
          indicatorSize: TabBarIndicatorSize.tab,
          indicator: BubbleTabIndicator(
            indicatorHeight: 35.0,
            indicatorColor: Theme.of(context).primaryColor,
            tabBarIndicatorSize: TabBarIndicatorSize.tab,
          ),
          tabs: marketTabs,
        ),
      ),
    );
  }
}
