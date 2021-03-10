import 'package:dogmeet_app/src/screens/global/components/constants.dart';
import 'package:flutter/material.dart';

import 'components/new_market_post.dart';

class MarketUsedPage extends StatelessWidget {
  const MarketUsedPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        NewMarketPost(kColourWhite(), 'assets/images/trainingtab2.jpg', '14.99',
            'Waterproof Training Tabs - All Colors'),
      ],
    );
  }
}
