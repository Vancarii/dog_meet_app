import 'package:dogmeet_app/components/constants.dart';
import 'package:dogmeet_app/components/new_market_post.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dogmeet_app/components/rounded_buttons.dart';
import 'package:flutter/rendering.dart';

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
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              marketStoreProfileRoundedButton('image', 'null', context),
              marketStoreProfileRoundedButton('image', 'null', context),
              marketStoreProfileRoundedButton('image', 'null', context),
              marketStoreProfileRoundedButton('image', 'null', context),
              marketStoreProfileRoundedButton('image', 'null', context),
              marketStoreProfileRoundedButton('image', 'null', context),
            ],
          ),
        ),
        Wrap(
          children: [
            NewMarketPost(kColourWhite(), 'assets/images/trainingtab2.jpg', '14.99', 'Waterproof Training Tabs - All Colors'),
            //NewMarketPost(kPrimaryColour(), 'assets/images/trainingtab2.jpg', '14.99', 'Waterproof Training Tabs - All Colors'),
          ],
        ),
      ],
    );
  }
}
