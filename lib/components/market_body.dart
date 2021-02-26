import 'package:dogmeet_app/screens/market_all_page.dart';
import 'package:dogmeet_app/screens/market_new_page.dart';
import 'package:dogmeet_app/screens/market_used_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'text_styles.dart';

//This is where the tab bar
//tabBarColors handles what to do when each tab is selected

enum tabBarCategories {
  All,
  New,
  Used,
}

Color allColor;
Color newColor;
Color usedColor;

Widget marketPageBody;

class MarketBody extends StatefulWidget {
  @override
  _MarketBodyState createState() => _MarketBodyState();
}

class _MarketBodyState extends State<MarketBody> {
  tabBarColors(selected) {
    setState(() {
      if (selected == tabBarCategories.All) {
        allColor = Color(0xfffc816a);
        newColor = Colors.white;
        usedColor = Colors.white;
        //NAVIGATES TO MARKETALLPAGE
        marketPageBody = MarketAllPage();
      } else if (selected == tabBarCategories.New) {
        allColor = Colors.white;
        newColor = Color(0xfffc816a);
        usedColor = Colors.white;
        //NAVIGATES TO MARKETNEWPAGE
        marketPageBody = MarketNewPage();
      } else if (selected == tabBarCategories.Used) {
        allColor = Colors.white;
        newColor = Colors.white;
        usedColor = Color(0xfffc816a);
        //NAVIGATES TO MARKETUSEDPAGE
        marketPageBody = MarketUsedPage();
      }
    });
  }

  @override
  void initState() {
    super.initState();
    tabBarColors(tabBarCategories.All);
  }

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RawMaterialButton(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
            fillColor: allColor,
            elevation: 0,
            onPressed: () {
              setState(() {
                tabBarColors(tabBarCategories.All);
              });
            },
            child: gibsonSemiBoldText('All', 0, 0, 0, 0, 15, Colors.black, TextAlign.center),
          ),
          RawMaterialButton(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
            fillColor: newColor,
            elevation: 0,
            onPressed: () {
              setState(() {
                tabBarColors(tabBarCategories.New);
              });
            },
            child: gibsonSemiBoldText('New', 0, 0, 0, 0, 15, Colors.black, TextAlign.center),
          ),
          RawMaterialButton(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
            fillColor: usedColor,
            elevation: 0,
            onPressed: () {
              setState(() {
                tabBarColors(tabBarCategories.Used);
              });
            },
            child: gibsonSemiBoldText('Used', 0, 0, 0, 0, 15, Colors.black, TextAlign.center),
          ),
        ],
      ),
      marketPageBody,
    ]);
  }
}
