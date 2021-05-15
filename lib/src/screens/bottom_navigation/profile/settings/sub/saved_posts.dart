import 'package:dog_meet_app/src/global_components/widgets/text_styles.dart';
import 'package:flutter/material.dart';

class SavedPosts extends StatelessWidget {
  final List<Container> savedTabs = [
    Container(
      height: 45,
      alignment: Alignment.center,
      child: CustomText(
        text: 'Forums',
        bold: true,
        size: 15,
      ),
    ),
    Container(
      height: 45,
      alignment: Alignment.center,
      child: CustomText(
        text: 'Listings',
        bold: true,
        size: 15,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            titleSpacing: 0,
            centerTitle: false,
            title: CustomText(
              text: 'Saved Posts',
              bold: true,
              size: 18,
            ),
            bottom: TabBar(
              unselectedLabelColor: Theme.of(context).primaryColorLight.withOpacity(0.4),
              labelColor: Theme.of(context).primaryColorLight,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorColor: Theme.of(context).accentColor,
              tabs: savedTabs,
            ),
          ),
          body: TabBarView(
            children: [
              ListView(
                children: [],
              ),
              ListView(
                children: [],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
