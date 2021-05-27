import 'package:dog_meet_app/src/global_components/enums/enums.dart';
import 'package:dog_meet_app/src/global_components/themes/app_colors.dart';
import 'package:dog_meet_app/src/global_components/widgets/text_styles.dart';
import 'package:dog_meet_app/src/provider/provider_notifier.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/forum/post/forum_post.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/market/body/components/market_product_tile.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/meetup/meet/components/post/meet_up_post.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/profile/settings/profile_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import '../../../global_components/delegate/sliver_tab_delegate.dart';
import 'info/profile_info.dart';

class AccountProfilePage extends StatefulWidget {
  @override
  _AccountProfilePageState createState() => _AccountProfilePageState();
}

class _AccountProfilePageState extends State<AccountProfilePage>
    with TickerProviderStateMixin {
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
        brightness: Brightness.light,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        automaticallyImplyLeading: false,
        centerTitle: false,
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
          text: 'Rosyandmaze',
          size: 26,
          bold: true,
          color: AppColors.colorBlack,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              FontAwesomeIcons.edit,
              size: 20,
              color: AppColors.colorBlack,
            ),
            onPressed: () {},
          ),
          Builder(
            builder: (context) => IconButton(
              icon: Icon(
                FontAwesomeIcons.bars,
                size: 20,
                color: AppColors.colorBlack,
              ),
              onPressed: () => Scaffold.of(context).openEndDrawer(),
              //tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            ),
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
                child: ProfileInfo(),
              ),
              SliverPersistentHeader(
                pinned: true,
                delegate: SliverTabDelegate(
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
                    meetUpType: meetType.playdate,
                    postImage: 'assets/images/pictures/rosymazeprofile.jpg',
                    accountName: 'RosyandMaze',
                    location: 'Glen Off-Leash Dog Park',
                    numOfPeopleGoing: 3,
                    time: '3:30',
                    amPm: 'am',
                    date: 'Sunday, April 18th, 2021',
                  ),
                  MeetUpPost(
                    meetUpType: meetType.socialization,
                    postImage: 'assets/images/pictures/rosymazeprofile.jpg',
                    accountName: 'RosyandMaze',
                    location: 'Glen Off-Leash Dog Park',
                    numOfPeopleGoing: 3,
                    time: '3:30',
                    amPm: 'am',
                    date: 'Sunday, April 18th, 2021',
                  ),
                ],
              ),
              Wrap(
                children: [
                  MarketProductTile(
                    productImage: 'assets/images/products/rokocollar.jpg',
                    productTitle: '1.5" Roko Dog Wear Collar',
                    price: '39.99',
                  ),
                  MarketProductTile(
                    productImage: 'assets/images/products/landsharkcollar.jpg',
                    productTitle: '1.5" Land Shark Supply Blue Collar',
                    price: '59.99',
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
