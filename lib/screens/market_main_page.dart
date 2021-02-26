import 'package:dogmeet_app/components/text_styles.dart';
import 'package:dogmeet_app/components/market_body.dart';
import 'package:dogmeet_app/screens/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//This page only consists of the appbar in the scaffold for the market page
//the tab bar is the MarketTabBar linked through the body of the scaffold below
//since the body of the page changes depending on which tab is pressed, eg: All, New, or Used,
//the body is linked through the MarketTabBar and the OnPressed of the tabs
//GO TO MARKETTABBAR TO SEE CODE FOR THE BODY OF THE MARKET PLACE PAGE

class MarketMainPage extends StatefulWidget {
  static const String id = 'marketplace_feed_page';

  @override
  _MarketMainPageState createState() => _MarketMainPageState();
}

class _MarketMainPageState extends State<MarketMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: gibsonSemiBoldText(
            'Market', 0, 0, 0, 0, 20, Colors.black, TextAlign.center),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              FontAwesomeIcons.search,
            ),
            onPressed: () {
              Navigator.pushNamed(context, SearchBarScreen.id);
            },
          ),
        ],
      ),
      //----------------------- BODY OF THE MARKET PAGE IS CONNECTED THROUGH MARKETTABBAR -----------------------
      body: MarketBody(),
    );
  }
}
