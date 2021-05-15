import 'package:flutter/material.dart';
import 'components/market_product_tile.dart';

class MarketNewPage extends StatelessWidget {
  final _marketNewRefreshKey = GlobalKey<RefreshIndicatorState>();

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        _marketNewRefreshKey.currentState?.show(atTop: true);
        //await Future.delayed(Duration(milliseconds: 300));
        //TODO: implement Refresh page
      },
      key: _marketNewRefreshKey,
      child: ListView(
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
      ),
    );
  }
}
