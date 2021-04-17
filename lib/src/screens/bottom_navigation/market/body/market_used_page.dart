import 'package:dog_meet_app/src/global_components/components/text_styles.dart';
import 'package:flutter/material.dart';

import 'components/new_market_post.dart';

class MarketUsedPage extends StatelessWidget {
  const MarketUsedPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(top: 5.0, bottom: 80),
      children: [
        Wrap(
          children: [
            NewMarketPost('New', 'assets/images/trainingtab2.jpg', '14.99',
                'Waterproof Training Tabs - All Colors - 10 inches, durable synthetic leather - Hoot \& Co'),
            NewMarketPost('New', 'assets/images/trainingtab2.jpg', '14.99',
                'Waterproof Training Tabs - Hoot \& Co'),
            NewMarketPost('New', 'assets/images/trainingtab2.jpg', '14.99',
                'Waterproof Training Tabs - All Colors - 10 inches, durable synthetic leather - Hoot \& Co'),
            NewMarketPost('New', 'assets/images/trainingtab2.jpg', '14.99',
                'Waterproof Training Tabs - All Colors - 10 inches, durable synthetic leather - Hoot \& Co'),
          ],
        ),
      ],
    );
  }
}
