import 'package:dogmeet_app/screens/meet_up_feed_page.dart';
import 'package:dogmeet_app/screens/forums_feed_page.dart';
import 'package:dogmeet_app/screens/login/pupfile_add_bio.dart';
import 'package:dogmeet_app/screens/main_bottom_nav_menu.dart';
import 'package:dogmeet_app/screens/market_main_page.dart';
import 'package:dogmeet_app/screens/search_screen.dart';
import 'package:flutter/material.dart';
import 'screens/login/new_user_screen.dart';
import 'screens/login/create_pupfile.dart';
import 'screens/login/create_profile.dart';

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
        MarketMainPage.id: (context) => MarketMainPage(),
      },
    );
  }
}
