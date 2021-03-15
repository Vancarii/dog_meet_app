import 'package:dog_meet_app/src/core/auth/register/create_profile.dart';
import 'package:dog_meet_app/src/core/auth/register/create_pupfile.dart';
import 'package:dog_meet_app/src/core/auth/register/new_user_screen.dart';
import 'package:dog_meet_app/src/core/auth/register/pupfile_add_bio.dart';
import 'package:dog_meet_app/src/screens/forum/comments/forum_comment_section.dart';
import 'package:dog_meet_app/src/screens/forum/forums_feed_page.dart';
import 'package:dog_meet_app/src/screens/global/bnb/main_bottom_nav_menu.dart';
import 'package:dog_meet_app/src/screens/global/components/app_colors%20.dart';
import 'package:dog_meet_app/src/screens/global/search/search_screen.dart';
import 'package:dog_meet_app/src/screens/market/body/details/market_product_details_page.dart';
import 'package:dog_meet_app/src/screens/market/market_app_bar.dart';
import 'file:///D:/flutter/flutterprojects/dog_meet_app/lib/src/screens/meetup/Pageview/meet_up_pageview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(DogMeetApp());
}

class DogMeetApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.colorWhite,
        primaryColor: AppColors.colorWhite,
        accentColor: AppColors.colorPrimaryOrange,
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
