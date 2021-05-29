import 'package:dog_meet_app/src/global_components/themes/app_colors.dart';
import 'package:dog_meet_app/src/global_components/widgets/text_styles.dart';
import 'package:dog_meet_app/src/global_components/route_transitions/route_transitions.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/forum/tab_screens/forum_discussion_page.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/forum/tab_screens/forum_funny_page.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/forum/tab_screens/forum_home_page.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/forum/tab_screens/forum_pupular_page.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/forum/tab_screens/forum_training_page.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/forum/tab_screens/forum_tricks_page.dart';
import 'package:dog_meet_app/src/screens/sub_screens/search/search_screen.dart';
import 'package:flutter/material.dart';

class ForumsAppBar extends StatefulWidget {
  static const String id = 'forums_feed_page';

  @override
  _ForumsAppBarState createState() => _ForumsAppBarState();
}

class _ForumsAppBarState extends State<ForumsAppBar> {
  List<Tab> forumTabs = <Tab>[
    Tab(child: CustomText(text: 'Home', size: 15, color: null, bold: true)),
    Tab(child: CustomText(text: 'Pupular', size: 15, color: null, bold: true)),
    Tab(
        child:
            CustomText(text: 'Discussion', size: 15, color: null, bold: true)),
    Tab(child: CustomText(text: 'Funny', size: 15, color: null, bold: true)),
    Tab(child: CustomText(text: 'Tricks', size: 15, color: null, bold: true)),
    Tab(child: CustomText(text: 'Training', size: 15, color: null, bold: true)),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: forumTabs.length,
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: false,
          elevation: 0,
          title: CustomText(
            text: 'Forum',
            size: 18,
            bold: true,
            alignment: TextAlign.center,
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.search,
              ),
              onPressed: () {
                Navigator.of(context).push(RouteTransitions()
                    .slideUpTransitionType(SearchBarScreen()));
              },
            ),
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(35),
            child: Theme(
              data: ThemeData(),
              child: TabBar(
                unselectedLabelColor:
                    Theme.of(context).primaryColorLight.withOpacity(0.4),
                labelColor: AppColors.colorPrimaryOrange,
                indicatorColor: AppColors.colorPrimaryOrange,
                indicatorWeight: 3,
                tabs: forumTabs,
                isScrollable: true,
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            ForumHomePage(),
            ForumPupularPage(),
            ForumDiscussionPage(),
            ForumFunnyPage(),
            ForumTricksPage(),
            ForumTrainingPage(),
          ],
        ),
      ),
    );
  }
}
