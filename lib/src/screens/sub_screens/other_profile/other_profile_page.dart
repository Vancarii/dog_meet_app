import 'package:dog_meet_app/src/global_components/themes/app_colors.dart';
import 'package:dog_meet_app/src/global_components/widgets/text_styles.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/forum/post/forum_post.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/market/body/components/market_product_tile.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/meetup/meet/components/post/meet_up_post.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/profile/settings/profile_drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'components/other_profile_tab_delegate.dart';
import 'info/other_profile_info.dart';

class OtherProfilePage extends StatefulWidget {
  static const String id = 'other_profile_page';

  @override
  _OtherProfilePageState createState() => _OtherProfilePageState();
}

class _OtherProfilePageState extends State<OtherProfilePage> with TickerProviderStateMixin {
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
        titleSpacing: 0,
        centerTitle: false,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient:
                  LinearGradient(begin: Alignment.bottomLeft, end: Alignment.topRight, colors: [
            AppColors.colorOrange,
            AppColors.colorPrimaryYellow,
          ])),
        ),
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            FontAwesomeIcons.arrowLeft,
            size: 20,
            color: AppColors.colorBlack,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: CustomText(
          text: 'Account Name',
          size: 26,
          bold: true,
          color: AppColors.colorBlack,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.more_vert,
              color: AppColors.colorBlack,
            ),
            onPressed: () {
              showCupertinoDialog(
                  context: context,
                  barrierDismissible: true,
                  builder: (BuildContext context) {
                    return CupertinoAlertDialog(
                      title: Text('Actions'),
                      actions: [
                        CupertinoDialogAction(
                          child: Text('Report'),
                          onPressed: () {
                            //TODO: ADD FUNCTIONALITY TO REPORT LISTING
                          },
                        ),
                        CupertinoDialogAction(
                          child: Text('Turn on post notifications'),
                          onPressed: () {
                            //TODO; ADD FUNCTIONALITY TO HIDE LISTING AND SIMILAR
                          },
                        ),
                        CupertinoDialogAction(
                          child: Text('Not Interested'),
                          onPressed: () {
                            //TODO; ADD FUNCTIONALITY TO HIDE LISTING AND SIMILAR
                          },
                        ),
                      ],
                    );
                  });
            },
          ),
        ],
      ),
      endDrawer: ProfileDrawer(),
      body: DefaultTabController(
        length: profilePostTabs.length,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverToBoxAdapter(
                child: OtherProfileInfo(),
              ),
              SliverPersistentHeader(
                pinned: true,
                delegate: OtherProfileTabDelegate(
                  TabBar(
                    indicatorWeight: 3.0,
                    indicatorColor: AppColors.colorPrimaryOrange,
                    labelColor: AppColors.colorPrimaryOrange,
                    unselectedLabelColor: Colors.grey,
                    indicatorSize: TabBarIndicatorSize.tab,
                    tabs: profilePostTabs,
                  ),
                  Theme.of(context).primaryColor,
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              ListView(
                children: [
                  MeetUpPost(
                    postImage: 'assets/images/pictures/rosymazeprofile.jpg',
                    accountName: 'RosyandMaze',
                    location: 'Glen Off-Leash Dog Park',
                    numOfPeopleGoing: 3,
                    time: '3:30',
                    amPm: 'am',
                    date: 'Sunday, April 18th, 2021',
                    onMeetUpPostSelected: () {},
                  ),
                  MeetUpPost(
                    postImage: 'assets/images/pictures/rosymazeprofile.jpg',
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
                  MarketProductTile(
                    condition: 'New',
                    productImage: 'assets/images/products/trainingtab2.jpg',
                    productTitle: 'Training Tabs - Hoot \& Co',
                    stock: true,
                    price: '14.99',
                  ),
                  MarketProductTile(
                    condition: 'New',
                    productImage: 'assets/images/products/trainingtab2.jpg',
                    productTitle: 'Training Tabs - Hoot \& Co',
                    stock: true,
                    price: '14.99',
                  ),
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
