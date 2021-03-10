import 'package:dogmeet_app/src/screens/global/components/constants.dart';
import 'package:flutter/material.dart';

import 'components/market_store_rounded_button.dart';
import 'components/new_market_post.dart';

class MarketNewPage extends StatelessWidget {
  const MarketNewPage({
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
            NewMarketPost(kPrimaryColour(), 'assets/images/trainingtab2.jpg',
                '14.99', 'Waterproof Training Tabs - All Colors'),
          ],
        ),
      ],
    );
  }
}
