import 'package:dog_meet_app/src/global_components/themes/app_colors.dart';
import 'package:dog_meet_app/src/global_components/widgets/text_styles.dart';
import 'package:dog_meet_app/src/global_components/constants/constants.dart';
import 'package:dog_meet_app/src/global_components/route_transitions/route_transitions.dart';
import 'package:dog_meet_app/src/global_components/route_transitions/transparent_route.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/forum/components/forums_page_filter_chip.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/market/body/components/market_product_tile.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/market/body/store/review_page.dart';
import 'package:dog_meet_app/src/screens/sub_screens/share_sheet/share_sheet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MarketStoreDetailsPage extends StatefulWidget {
  static const String id = 'market_store_details_page';

  final String storeName;
  final String storeImage;

  const MarketStoreDetailsPage({
    this.storeImage,
    this.storeName,
  });

  @override
  _MarketStoreDetailsPageState createState() => _MarketStoreDetailsPageState();
}

class _MarketStoreDetailsPageState extends State<MarketStoreDetailsPage> {
  List<String> productTypes = [
    'Leashes',
    'Collars',
    'Harnesses',
    'Crates',
    'Clothes',
    'Bandanas',
    'Beds',
    'Treats',
    'Grooming',
  ];

  bool pageIsLiked = false;

  int pageLikes = 169;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
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
          size: 18,
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
              Icons.more_vert,
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
                            child: Text('Share Store Profile'),
                            onPressed: () {
                              Navigator.push(
                                context,
                                TransparentRoute(
                                  duration: 0,
                                  builder: (context) => ShareSheet(),
                                ),
                              );
                            },
                          ),
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
                  alignment: Alignment.bottomLeft,
                  clipBehavior: Clip.none,
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      height: 150,
                      child: InkWell(
                        child: Hero(
                          tag: kStoreProfileCoverHeroTag,
                          child: Image(
                            image: AssetImage(widget.storeImage),
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: -60,
                      left: 20,
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          boxShadow: [kBoxShadow()],
                          color: Colors.white,
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage(widget.storeImage),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    margin: const EdgeInsets.all(10.0),
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width / 3 * 2,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        StoreIconButton(
                          onTap: () {
                            setState(() {
                              pageIsLiked = !pageIsLiked;
                              pageIsLiked == true ? pageLikes += 1 : pageLikes -= 1;
                            });
                          },
                          fillColor: pageIsLiked == false ? AppColors.colorPrimaryOrange : null,
                          text: CustomText(
                            text: pageIsLiked == false ? 'Like' : 'Liked',
                            color: pageIsLiked == false
                                ? AppColors.colorWhite
                                : AppColors.colorPrimaryOrange,
                            bold: true,
                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          ),
                        ),
                        StoreIconButton(
                          onTap: () {
                            setState(() {
                              showCupertinoDialog(
                                context: context,
                                barrierDismissible: true,
                                builder: (BuildContext context) {
                                  return CupertinoAlertDialog(
                                    title: Text('Open in Google Maps?'),
                                    actions: [
                                      CupertinoDialogAction(
                                        child: Text('Open'),
                                        onPressed: () {},
                                      ),
                                    ],
                                  );
                                },
                              );
                            });
                          },
                          icon: Icon(
                            Icons.location_on_rounded,
                            color: AppColors.colorPrimaryOrange,
                          ),
                        ),
                        StoreIconButton(
                          onTap: () {
                            setState(() {
                              showCupertinoDialog(
                                context: context,
                                barrierDismissible: true,
                                builder: (BuildContext context) {
                                  return CupertinoAlertDialog(
                                    title: Text('(778) - 636 - 7881'),
                                    actions: [
                                      CupertinoDialogAction(
                                        child: Text('Call'),
                                        onPressed: () {},
                                      ),
                                    ],
                                  );
                                },
                              );
                            });
                          },
                          icon: Icon(
                            Icons.phone_rounded,
                            color: AppColors.colorPrimaryOrange,
                          ),
                        ),
                        StoreIconButton(
                          onTap: () {
                            setState(() {
                              showCupertinoDialog(
                                context: context,
                                barrierDismissible: true,
                                builder: (BuildContext context) {
                                  return CupertinoAlertDialog(
                                    content: Text('link'),
                                    title: Text('Store Website'),
                                    actions: [
                                      CupertinoDialogAction(
                                        child: Text('Open Website'),
                                        onPressed: () {},
                                      ),
                                    ],
                                  );
                                },
                              );
                            });
                          },
                          icon: Icon(
                            Icons.public,
                            color: AppColors.colorPrimaryOrange,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                CustomText(
                  text: 'This is the bio, store owners can put whatever they want here',
                  padding: const EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
                ),
                Container(
                  margin: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () {
                          Navigator.push(context,
                              RouteTransitions().slideRightToLeftTransitionType(ReviewsPage()));
                        },
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.star,
                              color: AppColors.colorPrimaryOrange,
                            ),
                            Icon(
                              Icons.star,
                              color: AppColors.colorPrimaryOrange,
                            ),
                            Icon(
                              Icons.star,
                              color: AppColors.colorPrimaryOrange,
                            ),
                            Icon(
                              Icons.star,
                              color: AppColors.colorPrimaryOrange,
                            ),
                            Icon(
                              Icons.star,
                              color: AppColors.colorPrimaryOrange,
                            ),
                            CustomText(
                              text: ' 120 Reviews',
                              size: 15,
                              //bold: true,
                              color: AppColors.colorGrey,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: InkWell(
                          child: RichText(
                            text: TextSpan(
                              text: '$pageLikes',
                              style: TextStyle(
                                color: Theme.of(context).primaryColorLight,
                                fontFamily: 'Gibson',
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                              children: [
                                TextSpan(
                                  text: ' People liked this store',
                                  style: TextStyle(
                                    color: AppColors.colorGrey,
                                    fontFamily: 'Gibson',
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ListView.builder(
                    itemCount: productTypes.length,
                    padding: EdgeInsets.only(left: 5, bottom: 5),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return ForumsPageFilterChip(
                        topicText: productTypes[index],
                      );
                    },
                  ),
                ),
                MarketProductTile(
                  condition: 'New',
                  productImage: 'assets/images/products/trainingtab2.jpg',
                  productTitle: 'Training Tabs - Hoot \& Co',
                  stock: true,
                  price: '14.99',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class StoreIconButton extends StatelessWidget {
  final Icon icon;
  final CustomText text;
  final Color fillColor;
  final Color borderColor;
  final double borderThickness;
  final VoidCallback onTap;

  StoreIconButton({
    this.icon,
    this.text,
    this.fillColor = Colors.transparent,
    this.onTap,
    this.borderColor = AppColors.colorPrimaryOrange,
    this.borderThickness = 2.0,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 2.5,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            borderRadius: BorderRadius.all(Radius.circular(30.0)),
            onTap: onTap,
            child: Container(
              height: 38,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: text != null ? BoxShape.rectangle : BoxShape.circle,
                borderRadius: text != null ? BorderRadius.all(Radius.circular(30.0)) : null,
                border: Border.all(color: borderColor, width: borderThickness),
                color: fillColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: text == null ? icon : text,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
