import 'package:dogmeet_app/src/core/auth/register/create_profile.dart';
import 'package:dogmeet_app/src/core/auth/register/create_pupfile.dart';
import 'package:dogmeet_app/src/core/auth/register/new_user_screen.dart';
import 'package:dogmeet_app/src/core/auth/register/pupfile_add_bio.dart';
import 'package:dogmeet_app/src/screens/forum/comments/forum_comment_section.dart';
import 'package:dogmeet_app/src/screens/forum/forums_feed_page.dart';
import 'package:dogmeet_app/src/screens/global/main_bottom_nav_menu.dart';
import 'package:dogmeet_app/src/screens/global/search_screen.dart';
import 'package:dogmeet_app/src/screens/market/body/details/market_product_details_page.dart';
import 'package:dogmeet_app/src/screens/market/market_app_bar.dart';
import 'package:dogmeet_app/src/screens/meetup/meet_up_feed_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(DogMeetApp());

class DogMeetApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        backgroundColor: Colors.white,
        primaryColor: Colors.white,
        accentColor: Color(0xfffc816a),
      ),
      initialRoute: MainBottomNavMenu.id,
      routes: {
        NewUserScreen.id: (context) => NewUserScreen(),
        CreatePupfile.id: (context) => CreatePupfile(),
        CreateProfile.id: (context) => CreateProfile(),
        PupfileAddBio.id: (context) => PupfileAddBio(),
        MeetUpPageView.id: (context) => MeetUpPageView(),
        SearchBarScreen.id: (context) => SearchBarScreen(),
        ForumsFeedPage.id: (context) => ForumsFeedPage(),
        MainBottomNavMenu.id: (context) => MainBottomNavMenu(),
        MarketAppBar.id: (context) => MarketAppBar(),
        MarketProductDetailsPage.id: (context) => MarketProductDetailsPage(),
        ForumCommentSection.id: (context) => ForumCommentSection(),
      },
    );
  }
}
