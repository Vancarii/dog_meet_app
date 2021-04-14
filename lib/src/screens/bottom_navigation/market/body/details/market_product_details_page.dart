import 'package:dog_meet_app/src/global_components/components/text_styles.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/market/body/details/product_details/product_actions.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/market/body/details/product_details/product_description.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/market/body/details/product_details/product_image_carousel.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/market/body/details/product_details/product_info.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/market/body/details/product_details/product_location.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/market/body/details/product_details/product_poster_account.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/market/body/details/product_details/product_tags.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';

class MarketProductDetailsPage extends StatefulWidget {
  static const String id = 'market_product_details_page';

  final String condition;
  final String price;
  final String productTitle;

  const MarketProductDetailsPage({
    this.condition,
    this.price,
    this.productTitle,
  });

  @override
  _MarketProductDetailsPageState createState() => _MarketProductDetailsPageState();
}

class _MarketProductDetailsPageState extends State<MarketProductDetailsPage> {
/*  AnimationController lottieController;
  bool onTapSave = false;*/

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
          text: 'Market',
          size: 18,
          bold: true,
          alignment: TextAlign.center,
        ),
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
                            child: Text('Report Listing'),
                            onPressed: () {
                              //TODO: ADD FUNCTIONALITY TO REPORT LISTING
                            },
                          ),
                          CupertinoDialogAction(
                            child: Text('Hide similar posts'),
                            onPressed: () {
                              //TODO; ADD FUNCTIONALITY TO HIDE LISTING AND SIMILAR
                            },
                          )
                        ],
                      );
                    });
              });
            },
          ),
        ],
      ),
      body: SafeArea(
        minimum: EdgeInsets.all(5),
        child: ListView(
          children: <Widget>[
            ProductImageCarousel(),
            ProductActions(),
            ProductInfo(
              condition: widget.condition,
              price: widget.price,
              productTitle: widget.productTitle,
            ),
            ProductPosterAccount(),
            ProductDescription(),
            ProductLocation(),
            ProductTags(),
          ],
        ),
      ),
    );
  }
}