import 'package:dog_meet_app/src/global_components/components/app_colors.dart';
import 'package:dog_meet_app/src/global_components/components/text_styles.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/forum/post/forum_post.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/market/body/components/new_market_post.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/meetup/meet/components/post/meet_up_post.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/profile/profile_info.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AccountProfilePage extends StatefulWidget {
  @override
  _AccountProfilePageState createState() => _AccountProfilePageState();
}

class _AccountProfilePageState extends State<AccountProfilePage> with TickerProviderStateMixin {
  List<Tab> profilePostTabs = <Tab>[
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

  TabController profileTabController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
        length: profilePostTabs.length,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverToBoxAdapter(
                child: ProfileInfo(),
              ),
              SliverPersistentHeader(
                pinned: true,
                delegate: MyDelegate(
                  TabBar(
                    indicatorColor: AppColors.colorPrimaryOrange,
                    labelColor: AppColors.colorPrimaryOrange,
                    unselectedLabelColor: Colors.grey,
                    indicatorSize: TabBarIndicatorSize.tab,
                    tabs: profilePostTabs,
                  ),
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              ListView(
                children: [
                  MeetUpPost(
                    postImage: 'assets/images/rosymazeprofile.jpg',
                    accountName: 'RosyandMaze',
                    location: 'Glen Off-Leash Dog Park',
                    numOfPeopleGoing: 3,
                    time: '3:30',
                    amPm: 'am',
                    date: 'Sunday, April 18th, 2021',
                    onMeetUpPostSelected: () {},
                  ),
                  MeetUpPost(
                    postImage: 'assets/images/rosymazeprofile.jpg',
                    accountName: 'RosyandMaze',
                    location: 'Glen Off-Leash Dog Park',
                    numOfPeopleGoing: 3,
                    time: '3:30',
                    amPm: 'am',
                    date: 'Sunday, April 18th, 2021',
                    onMeetUpPostSelected: () {},
                  ),
                  MeetUpPost(
                    postImage: 'assets/images/rosymazeprofile.jpg',
                    accountName: 'RosyandMaze',
                    location: 'Glen Off-Leash Dog Park',
                    numOfPeopleGoing: 3,
                    time: '3:30',
                    amPm: 'am',
                    date: 'Sunday, April 18th, 2021',
                    onMeetUpPostSelected: () {},
                  ),
                  MeetUpPost(
                    postImage: 'assets/images/rosymazeprofile.jpg',
                    accountName: 'RosyandMaze',
                    location: 'Glen Off-Leash Dog Park',
                    numOfPeopleGoing: 3,
                    time: '3:30',
                    amPm: 'am',
                    date: 'Sunday, April 18th, 2021',
                    onMeetUpPostSelected: () {},
                  ),
                ],
              ),
              Wrap(
                children: [
                  NewMarketPost('New', 'assets/images/trainingtab2.jpg', '14.99',
                      'Waterproof Training Tabs - All Colors - 10 inches, durable synthetic leather - Hoot \& Co'),
                  NewMarketPost('New', 'assets/images/trainingtab2.jpg', '14.99',
                      'Waterproof Training Tabs - Hoot \& Co'),
                ],
              ),
              ListView(
                children: [
                  ForumPost(),
                ],
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
