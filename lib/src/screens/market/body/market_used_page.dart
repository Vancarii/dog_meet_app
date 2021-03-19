import 'package:dog_meet_app/src/screens/global/components/app_colors.dart';
import 'package:dog_meet_app/src/screens/global/components/text_styles.dart';
import 'package:flutter/material.dart';

import 'components/new_market_post.dart';

class MarketUsedPage extends StatelessWidget {
  const MarketUsedPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(top: 20.0, bottom: 80),
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 15.0,
            bottom: 15.0,
          ),
          child: CustomText(
            text: 'Products',
            size: 26,
            bold: true,
            alignment: TextAlign.left,
          ),
        ),
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
