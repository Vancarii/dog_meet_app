import 'package:dog_meet_app/src/core/auth/register/create_profile.dart';
import 'package:dog_meet_app/src/core/auth/register/create_pupfile.dart';
import 'package:dog_meet_app/src/core/auth/register/new_user_screen.dart';
import 'package:dog_meet_app/src/core/auth/register/pupfile_add_bio.dart';
import 'package:dog_meet_app/src/global_components/components/app_colors.dart';
import 'package:dog_meet_app/src/provider/fab_message_notifier.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/bnb/main_bottom_nav_menu.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/forum/forums_app_bar.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/forum/post/comments/forum_comment_section.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/market/body/details/market_product_details_page.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/market/market_app_bar.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/notification/pageview/notification_pageview.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/profile/profile_view_meetup.dart';
import 'package:dog_meet_app/src/screens/sub_screens/search/search_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(DogMeetApp());
}

class DogMeetApp extends StatelessWidget {
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.transparent,
    ));
    return ChangeNotifierProvider(
      create: (BuildContext context) => FabMessageNotifier(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: AppColors.colorWhite,
          primaryColor: AppColors.colorWhite,
          accentColor: AppColors.colorPrimaryOrange,
          backgroundColor: AppColors.colorWhite,
          //visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: MainBottomNavMenu.id,
        routes: {
          NewUserScreen.id: (context) => NewUserScreen(),
          CreatePupfile.id: (context) => CreatePupfile(),
          CreateProfile.id: (context) => CreateProfile(),
          PupfileAddBio.id: (context) => PupfileAddBio(),
          NotificationsPageView.id: (context) => NotificationsPageView(),
          SearchBarScreen.id: (context) => SearchBarScreen(),
          ForumsAppBar.id: (context) => ForumsAppBar(),
          MainBottomNavMenu.id: (context) => MainBottomNavMenu(),
          MarketAppBar.id: (context) => MarketAppBar(),
          MarketProductDetailsPage.id: (context) => MarketProductDetailsPage(),
          ForumCommentSection.id: (context) => ForumCommentSection(),
          ProfileViewMeetUp.id: (context) => ProfileViewMeetUp(),
        },
      ),
    );
  }
}
