import 'package:dog_meet_app/src/core/auth/intro/authentication/auth_screen.dart';
import 'package:dog_meet_app/src/core/auth/intro/intro_screen.dart';
import 'package:dog_meet_app/src/core/auth/intro/intro_screen2.dart';
import 'package:dog_meet_app/src/core/auth/register/create_profile.dart';
import 'package:dog_meet_app/src/core/auth/register/create_pupfile.dart';
import 'package:dog_meet_app/src/core/auth/register/new_user_screen.dart';
import 'package:dog_meet_app/src/core/auth/register/pupfile_add_bio.dart';
import 'package:dog_meet_app/src/global_components/themes/app_colors.dart';
import 'package:dog_meet_app/src/provider/provider_notifier.dart';
import 'package:dog_meet_app/src/global_components/themes/theme.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/bnb/main_bottom_nav_menu.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/forum/forums_app_bar.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/forum/new/post_forum_page.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/forum/post/comments/forum_comment_section.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/market/body/details/market_product_details_page.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/market/market_app_bar.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/market/new/post_listing_page.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/meetup/meet/new/post_meet_page.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/notification/pageview/notification_pageview.dart';
import 'package:dog_meet_app/src/screens/splash/splash_screen.dart';
import 'package:dog_meet_app/src/screens/sub_screens/other_profile/other_profile_page.dart';
import 'package:dog_meet_app/src/screens/sub_screens/search/search_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

//TODO: find all controllers and add dispose method

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(DogMeetApp());
}

class DogMeetApp extends StatefulWidget {
  @override
  _DogMeetAppState createState() => _DogMeetAppState();
}

class _DogMeetAppState extends State<DogMeetApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (BuildContext context) => ProviderNotifier(),
        builder: (BuildContext context, _) {
          final themeProvider = Provider.of<ProviderNotifier>(context);
          SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
            statusBarBrightness: Brightness.dark,
            statusBarColor: Colors.transparent,
            systemNavigationBarColor: AppColors.colorOffBlack,
          ));
          return MaterialApp(
            color: Theme.of(context).primaryColor,
            debugShowCheckedModeBanner: false,
            themeMode: themeProvider.themeMode,
            darkTheme: AppThemes.darkTheme,
            theme: AppThemes.lightTheme,
            initialRoute: AuthScreen.id,
            routes: {
              AuthScreen.id: (context) => AuthScreen(),
              IntroScreen.id: (context) => IntroScreen(),
              IntroScreen2.id: (context) => IntroScreen2(),
              SplashScreen.id: (context) => SplashScreen(),
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
              PostForumPage.id: (context) => PostForumPage(),
              PostListingPage.id: (context) => PostListingPage(),
              PostMeetPage.id: (context) => PostMeetPage(),
              OtherProfilePage.id: (context) => OtherProfilePage(),
            },
          );
        });
  }
}

class CustomScrollBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
