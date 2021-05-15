//UNUSED FILE!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

import 'package:dog_meet_app/src/global_components/widgets/text_styles.dart';
import 'package:flutter/material.dart';
import '../market_all_page.dart';
import '../market_new_page.dart';
import '../market_used_page.dart';

enum tabBarCategories {
  All,
  New,
  Used,
}

Color allColor;
Color newColor;
Color usedColor;

Widget marketPageBody;

class MarketBodyTabs extends StatefulWidget {
  @override
  _MarketBodyTabsState createState() => _MarketBodyTabsState();
}

class _MarketBodyTabsState extends State<MarketBodyTabs> {
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

  RawMaterialButton marketBodyFilterButton(Color fillColor, String text, tabBarCategories page) {
    return RawMaterialButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
      fillColor: fillColor,
      elevation: 0,
      onPressed: () {
        setState(() {
          tabBarColors(page);
        });
      },
      child: CustomText(
        text: text,
        size: 15,
        bold: true,
        alignment: TextAlign.center,
      ),
    );
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
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          marketBodyFilterButton(allColor, 'All', tabBarCategories.All),
          marketBodyFilterButton(newColor, 'New', tabBarCategories.New),
          marketBodyFilterButton(usedColor, 'Used', tabBarCategories.Used),
        ],
      ),
      marketPageBody,
    ]);
  }
}
