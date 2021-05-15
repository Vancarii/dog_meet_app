import 'package:dog_meet_app/src/global_components/widgets/text_styles.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/market/new/components/market_tags.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'components/add_images_gridview.dart';
import 'components/listing_description_textfield.dart';
import 'components/listing_price_textfield.dart';
import 'components/listing_title_textfield.dart';
import 'components/product_condition_chips.dart';

enum conditionType {
  BrandNew,
  UsedLikeNew,
  UsedGood,
  UsedFair,
}

class PostListingPage extends StatefulWidget {
  static const String id = 'post_listing_page';

  @override
  _PostListingPageState createState() => _PostListingPageState();
}

class _PostListingPageState extends State<PostListingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomInset: true,
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: CustomText(
          text: 'New Listing Post',
          size: 18,
          bold: true,
          //alignment: TextAlign.center,
        ),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.close_rounded),
        ),
        actions: <Widget>[
          Center(
            child: GestureDetector(
              child: CustomText(
                text: 'Post',
                size: 18,
                color: Theme.of(context).accentColor,
                bold: true,
                // alignment: TextAlign.center,
                padding: const EdgeInsets.only(right: 15.0),
              ),
              onTap: () {},
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 5.0),
          child: SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColorLight.withOpacity(0.2),
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 10.0,
                        bottom: 15.0,
                        right: 5.0,
                      ),
                      child: RichText(
                        text: TextSpan(
                            text: 'Add Images ',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Gibson',
                              color: Theme.of(context).primaryColorLight,
                            ),
                            children: [
                              TextSpan(
                                  text: '(Hold and Drag to rearrange)',
                                  style: TextStyle(
                                    fontFamily: 'Gibson',
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                    color: Theme.of(context).primaryColorLight.withOpacity(0.6),
                                  ))
                            ]),
                      ),
                    ),
                    AddImagesGridView(gridCount: 6),
                    SizedBox(
                      height: 15,
                    ),
                    ListingTitleTextField(),
                    ProductConditionChips(),
                    ListingPriceTextField(),
                    ListingDescriptionTextField(),
                    MarketTags(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
