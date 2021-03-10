import 'package:dogmeet_app/src/screens/forum/components/forums_page_filter_chip.dart';
import 'package:dogmeet_app/src/screens/global/components/constants.dart';
import 'package:dogmeet_app/src/screens/global/components/text_styles.dart';
import 'package:dogmeet_app/src/screens/market/body/components/new_market_post.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MarketStoreDetailsPage extends StatefulWidget {
  static const String id = 'market_store_details_page';

  final String storeName;
  final String storeImage;

  const MarketStoreDetailsPage({
    @required this.storeImage,
    @required this.storeName,
  });

  @override
  _MarketStoreDetailsPageState createState() => _MarketStoreDetailsPageState();
}

class _MarketStoreDetailsPageState extends State<MarketStoreDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(FontAwesomeIcons.arrowLeft),
          onPressed: () {
            setState(() {
              Navigator.pop(context);
            });
          },
        ),
        elevation: 0,
        centerTitle: true,
        title: gibsonSemiBoldText(
            widget.storeName, 0, 0, 0, 0, 20, Colors.black, TextAlign.center),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              FontAwesomeIcons.ellipsisV,
            ),
            onPressed: () {
              setState(() {
                showCupertinoDialog(
                    context: context,
                    barrierDismissible: true,
                    builder: (BuildContext context) {
                      return CupertinoAlertDialog(
                        title: Text('Actions'),
                        actions: [
                          CupertinoDialogAction(
                            child: Text('Report Store'),
                            onPressed: () {
                              //TODO: ADD FUNCTIONALITY TO REPORT LISTING
                            },
                          ),
                          /*CupertinoDialogAction(
                            child: Text('Hide similar posts'),
                            onPressed: () {

                            },
                          )*/
                        ],
                      );
                    });
              });
            },
          ),
        ],
      ),
      body: SafeArea(
        maintainBottomViewPadding: true,
        child: ListView(
          padding: EdgeInsets.only(bottom: 10),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Stack(
                  alignment: Alignment.bottomCenter,
                  clipBehavior: Clip.none,
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.width / 2.5,
                      child: Image(
                        image: AssetImage('assets/images/trainingtab2.jpg'),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    Positioned(
                      bottom: -MediaQuery.of(context).size.width / 8,
                      child: Container(
                        width: MediaQuery.of(context).size.width / 4,
                        height: MediaQuery.of(context).size.width / 4,
                        decoration: BoxDecoration(
                          boxShadow: [kBoxShadow()],
                          color: Colors.white,
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage(widget.storeImage),
                              fit: BoxFit.fitHeight),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.all(3),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              gibsonSemiBoldText(
                                  '4.9',
                                  0,
                                  0,
                                  5,
                                  5,
                                  MediaQuery.of(context).size.width / 26,
                                  Colors.black,
                                  TextAlign.start),
                              Icon(
                                Icons.star_border,
                                size: MediaQuery.of(context).size.width / 20,
                              ),
                              Icon(
                                Icons.star_border,
                                size: MediaQuery.of(context).size.width / 20,
                              ),
                              Icon(
                                Icons.star_border,
                                size: MediaQuery.of(context).size.width / 20,
                              ),
                              Icon(
                                Icons.star_border,
                                size: MediaQuery.of(context).size.width / 20,
                              ),
                              Icon(
                                Icons.star_border,
                                size: MediaQuery.of(context).size.width / 20,
                              ),
                            ],
                          ),
                          InkWell(
                            child: gibsonSemiBoldText('Customer Reviews (3)', 5,
                                5, 5, 5, 12, Colors.blue, TextAlign.start),
                          ),
                        ],
                      ),
                      Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              gibsonSemiBoldText(
                                  'Location',
                                  0,
                                  0,
                                  5,
                                  5,
                                  MediaQuery.of(context).size.width / 26,
                                  kPrimaryColour(),
                                  TextAlign.end),
                              Icon(
                                Icons.location_on_rounded,
                                size: MediaQuery.of(context).size.width / 20,
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              gibsonSemiBoldText('OPEN', 0, 0, 5, 5, 15,
                                  Colors.green, TextAlign.end),
                              gibsonSemiBoldText('closes 5 pm', 0, 0, 0, 0, 12,
                                  Colors.black, TextAlign.end),
                              Icon(
                                Icons.arrow_drop_down_rounded,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      GestureDetector(
                        child: Container(
                          width: MediaQuery.of(context).size.width / 4,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [kBoxShadow()],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          child: gibsonSemiBoldText('Call', 5, 5, 5, 5, 12,
                              Colors.black, TextAlign.center),
                        ),
                      ),
                      GestureDetector(
                        child: Container(
                          width: MediaQuery.of(context).size.width / 4,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [kBoxShadow()],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          child: gibsonSemiBoldText('Website', 5, 5, 5, 5, 12,
                              Colors.black, TextAlign.center),
                        ),
                      ),
                      GestureDetector(
                        child: Container(
                          width: MediaQuery.of(context).size.width / 4,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [kBoxShadow()],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          child: gibsonSemiBoldText('Directions', 5, 5, 5, 5,
                              12, Colors.black, TextAlign.center),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ListView(
                    padding: EdgeInsets.only(left: 5, bottom: 5),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      ForumsPageFilterChip(
                        topicText: 'Leashes',
                      ),
                      ForumsPageFilterChip(
                        topicText: 'Collars',
                      ),
                      ForumsPageFilterChip(
                        topicText: 'Harnesses',
                      ),
                      ForumsPageFilterChip(
                        topicText: 'Crates',
                      ),
                      ForumsPageFilterChip(
                        topicText: 'Clothes',
                      ),
                      ForumsPageFilterChip(
                        topicText: 'Beds',
                      ),
                      ForumsPageFilterChip(
                        topicText: 'Treats',
                      ),
                      ForumsPageFilterChip(
                        topicText: 'Grooming Tools',
                      ),
                    ],
                  ),
                ),
                NewMarketPost(kPrimaryColour(),
                    'assets/images/trainingtab2.jpg', '15.99', 'Training tabs'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
