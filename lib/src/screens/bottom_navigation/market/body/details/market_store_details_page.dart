import 'package:dog_meet_app/src/global_components/components/app_colors.dart';
import 'package:dog_meet_app/src/global_components/components/text_styles.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/forum/components/forums_page_filter_chip.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/market/body/components/new_market_post.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MarketStoreDetailsPage extends StatefulWidget {
  static const String id = 'market_store_details_page';

  final String storeName;
  final String storeImage;

  const MarketStoreDetailsPage({
    required this.storeImage,
    required this.storeName,
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
        title: CustomText(
          text: widget.storeName,
          size: 20,
          bold: true,
        ),
        /*Text(
          widget.storeName,
          style: AppTextStyles.h20BlackBold,
          textAlign: TextAlign.center,
        ),*/
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
                              image: AssetImage(widget.storeImage), fit: BoxFit.fitHeight),
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
                              CustomText(
                                text: '5.0',
                                size: 15,
                                bold: true,
                                alignment: TextAlign.start,
                                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                              ),
                              /*Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                                child: Text(
                                  '4.9',
                                  style: AppTextStyles.h26BlackBold,
                                  textAlign: TextAlign.start,
                                ),
                              ),*/
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
                            child: CustomText(
                              text: 'Customer Reviews (3)',
                              size: 12,
                              color: Colors.blue,
                              alignment: TextAlign.start,
                              bold: true,
                              padding: const EdgeInsets.only(left: 5.0),
                            ),

                            /*Text(
                              ' Customer Reviews (3)',
                              style: AppTextStyles.h12BlueBold,
                              textAlign: TextAlign.start,
                            ),*/
                          ),
                        ],
                      ),
                      Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              CustomText(
                                text: 'Location',
                                size: 15,
                                bold: true,
                                color: AppColors.colorPrimaryOrange,
                                alignment: TextAlign.end,
                                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                              ),
                              /*Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                                child: Text(
                                  'location',
                                  style: AppTextStyles.h26OrangeBold,
                                  textAlign: TextAlign.end,
                                ),
                              ),*/
                              Icon(
                                Icons.location_on_rounded,
                                size: MediaQuery.of(context).size.width / 20,
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CustomText(
                                text: 'Open',
                                size: 15,
                                bold: true,
                                color: Colors.green,
                                alignment: TextAlign.end,
                                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                              ),
                              /*Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                                child: Text(
                                  'Open',
                                  style: AppTextStyles.h15GreenBold,
                                  textAlign: TextAlign.end,
                                ),
                              ),*/
                              CustomText(
                                text: 'closes 5 pm',
                                size: 12,
                                bold: true,
                                alignment: TextAlign.end,
                              ),
                              /*Text(
                                'closes 5 pm',
                                style: AppTextStyles.h12BlackBold,
                                textAlign: TextAlign.end,
                              ),*/
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
                              borderRadius: BorderRadius.all(Radius.circular(5))),
                          child: CustomText(
                            text: 'Call',
                            bold: true,
                            size: 12,
                            alignment: TextAlign.center,
                            padding: const EdgeInsets.all(5.0),
                          ),

                          /*Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Text(
                              'Call',
                              style: AppTextStyles.h12BlackBold,
                              textAlign: TextAlign.center,
                            ),
                          ),*/
                        ),
                      ),
                      GestureDetector(
                        child: Container(
                          width: MediaQuery.of(context).size.width / 4,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [kBoxShadow()],
                              borderRadius: BorderRadius.all(Radius.circular(5))),
                          child: CustomText(
                            text: 'Website',
                            bold: true,
                            size: 12,
                            alignment: TextAlign.center,
                            padding: const EdgeInsets.all(5.0),
                          ),
                          /*Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              'Website',
                              style: AppTextStyles.h12BlackBold,
                              textAlign: TextAlign.center,
                            ),
                          ),*/
                        ),
                      ),
                      GestureDetector(
                        child: Container(
                          width: MediaQuery.of(context).size.width / 4,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [kBoxShadow()],
                              borderRadius: BorderRadius.all(Radius.circular(5))),
                          child: CustomText(
                            text: 'Directions',
                            bold: true,
                            size: 12,
                            alignment: TextAlign.center,
                            padding: const EdgeInsets.all(5.0),
                          ),

                          /*Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              'Directions',
                              style: AppTextStyles.h12BlackBold,
                              textAlign: TextAlign.center,
                            ),
                          ),*/
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
                NewMarketPost('New', 'assets/images/trainingtab2.jpg', '15.99', 'Training tabs'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
