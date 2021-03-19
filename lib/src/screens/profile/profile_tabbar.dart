import 'package:dog_meet_app/src/screens/global/components/app_colors.dart';
import 'package:dog_meet_app/src/screens/global/components/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileTabBar extends StatefulWidget {
  @override
  _ProfileTabBarState createState() => _ProfileTabBarState();
}

class _ProfileTabBarState extends State<ProfileTabBar> with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {}
}

/*
Column(
children: [
Theme(
data: ThemeData(
splashColor: Colors.transparent,
highlightColor: Colors.transparent,
),
child: TabBar(
indicatorColor: AppColors.colorPrimaryOrange,
labelColor: AppColors.colorPrimaryOrange,
unselectedLabelColor: Colors.grey,
controller: _profileTabController,
indicatorSize: TabBarIndicatorSize.tab,
tabs: marketTabs,
),
),
TabBarView(
controller: _profileTabController,
children: [
Container(
height: 100,
),
Container(
decoration: BoxDecoration(
gradient:
LinearGradient(begin: Alignment.bottomLeft, end: Alignment.topRight, colors: [
AppColors.colorPrimaryYellow,
AppColors.colorPrimaryOrange,
])),
),
Container(
decoration: BoxDecoration(
gradient:
LinearGradient(begin: Alignment.bottomLeft, end: Alignment.topRight, colors: [
AppColors.colorPrimaryOrange,
AppColors.colorPrimaryYellow,
])),
),
],
),
],
);*/
