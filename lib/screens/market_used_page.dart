import 'package:dogmeet_app/components/constants.dart';
import 'package:dogmeet_app/components/new_market_post.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MarketUsedPage extends StatelessWidget {
  const MarketUsedPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        NewMarketPost(kColourWhite(), 'assets/images/trainingtab2.jpg', '14.99', 'Waterproof Training Tabs - All Colors'),
      ],
    );
  }
}
