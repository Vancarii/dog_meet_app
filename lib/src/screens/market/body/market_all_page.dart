import 'package:dogmeet_app/src/screens/global/components/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'components/market_store_rounded_button.dart';
import 'components/new_market_post.dart';

class MarketAllPage extends StatelessWidget {
  const MarketAllPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: double.infinity,
          height: 150,
          child: ListView(
            padding: EdgeInsets.only(bottom: 10),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              MarketStoreRoundedButton(
                storeImage: 'assets/images/boneandbiscuit.png',
                storeName: 'Bone And Biscuit',
              ),
              MarketStoreRoundedButton(
                storeImage: 'assets/images/trainingtab2.jpg',
                storeName: 'Store Name',
              ),
              MarketStoreRoundedButton(
                storeImage: 'assets/images/trainingtab2.jpg',
                storeName: 'Store Name',
              ),
              MarketStoreRoundedButton(
                storeImage: 'assets/images/trainingtab2.jpg',
                storeName: 'Store Name',
              ),
              MarketStoreRoundedButton(
                storeImage: 'assets/images/trainingtab2.jpg',
                storeName: 'Store Name',
              ),
              MarketStoreRoundedButton(
                storeImage: 'assets/images/trainingtab2.jpg',
                storeName: 'Store Name',
              ),
            ],
          ),
        ),
        Wrap(
          children: [
            NewMarketPost(
                kColourWhite(),
                'assets/images/trainingtab2.jpg',
                '14.99',
                'Waterproof Training Tabs - All Colors - 10 inches, durable synthetic leather - Hoot \& Co'),
            //NewMarketPost(kPrimaryColour(), 'assets/images/trainingtab2.jpg', '14.99', 'Waterproof Training Tabs - All Colors'),
          ],
        ),
      ],
    );
  }
}
