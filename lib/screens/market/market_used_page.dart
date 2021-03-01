import 'package:dogmeet_app/components/ui/constants.dart';
import 'file:///C:/Users/xnycw/AndroidStudioProjects/dog_meet_app/lib/components/posts/new_market_post.dart';
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
