import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:dog_meet_app/src/screens/global/components/app_colors.dart';
import 'package:dog_meet_app/src/screens/global/components/text_styles.dart';
import 'package:dog_meet_app/src/screens/global/search/search_screen.dart';
import 'package:dog_meet_app/src/screens/profile/profile_carousel.dart';
import 'package:dog_meet_app/src/screens/profile/profile_info.dart';
import 'package:dog_meet_app/src/screens/profile/profile_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AccountProfilePage extends StatefulWidget {
  @override
  _AccountProfilePageState createState() => _AccountProfilePageState();
}

class _AccountProfilePageState extends State<AccountProfilePage> {
  List<Tab> marketTabs = <Tab>[
    Tab(
      child: Icon(FontAwesomeIcons.paw),
    ),
    Tab(
      child: Icon(Icons.store),
    ),
    Tab(
      child: Icon(Icons.forum),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient:
                  LinearGradient(begin: Alignment.bottomLeft, end: Alignment.topRight, colors: [
            AppColors.colorOrange,
            AppColors.colorPrimaryYellow,
          ])),
        ),
        elevation: 0,
        //centerTitle: true,
        title: CustomText(
          text: 'Rosyandmaze',
          size: 26,
          bold: true,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              FontAwesomeIcons.edit,
              size: 20,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              FontAwesomeIcons.bars,
              size: 20,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: DefaultTabController(
        length: marketTabs.length,
        child: NestedScrollView(
          physics: NeverScrollableScrollPhysics(),
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                backgroundColor: Colors.black,
                expandedHeight: 372,
                collapsedHeight: 372,
                //pinned: false,
                flexibleSpace: ProfileInfo(),
              ),
              SliverPersistentHeader(
                  floating: true,
                  delegate: MyDelegate(
                    TabBar(
                      indicatorColor: AppColors.colorPrimaryOrange,
                      labelColor: AppColors.colorPrimaryOrange,
                      unselectedLabelColor: Colors.grey,
                      indicatorSize: TabBarIndicatorSize.tab,
                      tabs: marketTabs,
                    ),
                  ))
            ];
          },
          body: TabBarView(
            children: [
              Container(
                height: 200,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        colors: [
                      AppColors.colorPrimaryYellow,
                      AppColors.colorPrimaryOrange,
                    ])),
              ),
              Container(
                height: 200,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        colors: [
                      AppColors.colorPrimaryYellow,
                      AppColors.colorPrimaryOrange,
                    ])),
              ),
              Container(
                height: 200,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        colors: [
                      AppColors.colorPrimaryOrange,
                      AppColors.colorPrimaryYellow,
                    ])),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyDelegate extends SliverPersistentHeaderDelegate {
  MyDelegate(this.tabBar);

  final TabBar tabBar;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.white,
      child: tabBar,
    );
  }

  @override
  double get maxExtent => tabBar.preferredSize.height;

  @override
  double get minExtent => tabBar.preferredSize.height;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
