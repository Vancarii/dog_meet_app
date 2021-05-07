import 'package:dog_meet_app/src/global_components/components/text_styles.dart';
import 'package:flutter/material.dart';

import 'components/market_store_tile.dart';
import 'components/market_product_tile.dart';

class MarketNewPage extends StatelessWidget {
  const MarketNewPage({
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
              condition: 'New',
              productImage: 'assets/images/products/trainingtab2.jpg',
              productTitle: 'Training Tabs - Hoot \& Co',
              stock: true,
              price: '14.99',
            ),
            MarketProductTile(
              condition: 'New',
              productImage: 'assets/images/products/trainingtab2.jpg',
              productTitle: 'Training Tabs - Hoot \& Co',
              stock: true,
              price: '14.99',
            ),
            MarketProductTile(
              condition: 'New',
              productImage: 'assets/images/products/trainingtab2.jpg',
              productTitle: 'Training Tabs - Hoot \& Co',
              stock: true,
              price: '14.99',
            ),
            MarketProductTile(
              condition: 'New',
              productImage: 'assets/images/products/trainingtab2.jpg',
              productTitle: 'Training Tabs - Hoot \& Co',
              stock: true,
              price: '14.99',
            ),
            MarketProductTile(
              condition: 'New',
              productImage: 'assets/images/products/trainingtab2.jpg',
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
