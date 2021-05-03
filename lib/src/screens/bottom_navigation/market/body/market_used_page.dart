import 'package:dog_meet_app/src/global_components/components/text_styles.dart';
import 'package:flutter/material.dart';

import 'components/market_product_tile.dart';

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
            MarketProductTile(
              condition: 'Used',
              productImage: 'assets/images/trainingtab2.jpg',
              productTitle: 'Training Tabs - Hoot \& Co',
              stock: true,
              price: '14.99',
            ),
            MarketProductTile(
              condition: 'Used',
              productImage: 'assets/images/trainingtab2.jpg',
              productTitle: 'Training Tabs - Hoot \& Co',
              stock: true,
              price: '14.99',
            ),
            MarketProductTile(
              condition: 'Used',
              productImage: 'assets/images/trainingtab2.jpg',
              productTitle: 'Training Tabs - Hoot \& Co',
              stock: true,
              price: '14.99',
            ),
            MarketProductTile(
              condition: 'Used',
              productImage: 'assets/images/trainingtab2.jpg',
              productTitle: 'Training Tabs - Hoot \& Co',
              stock: true,
              price: '14.99',
            ),
            MarketProductTile(
              condition: 'Used',
              productImage: 'assets/images/trainingtab2.jpg',
              productTitle: 'Training Tabs - Hoot \& Co',
              stock: true,
              price: '14.99',
            ),
          ],
        ),
      ],
    );
  }
}
