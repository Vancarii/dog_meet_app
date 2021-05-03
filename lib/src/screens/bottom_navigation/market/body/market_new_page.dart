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
      padding: const EdgeInsets.only(top: 20.0, bottom: 80),
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 15.0,
            bottom: 10.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CustomText(
                text: 'Stores',
                size: 26,
                bold: true,
                alignment: TextAlign.start,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(1, 1),
                            blurRadius: 2,
                            spreadRadius: 1,
                          )
                        ]),
                    child: Icon(
                      Icons.keyboard_arrow_right_rounded,
                      size: 30,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          width: double.infinity,
          height: 150,
          child: ListView(
            padding: EdgeInsets.only(left: 5, bottom: 10),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              MarketStoreTile(
                storeImage: 'assets/images/boneandbiscuit.png',
                storeName: 'Bone And Biscuit',
              ),
              MarketStoreTile(
                storeImage: 'assets/images/trainingtab2.jpg',
                storeName: 'Store Name',
              ),
              MarketStoreTile(
                storeImage: 'assets/images/trainingtab2.jpg',
                storeName: 'Store Name',
              ),
              MarketStoreTile(
                storeImage: 'assets/images/trainingtab2.jpg',
                storeName: 'Store Name',
              ),
              MarketStoreTile(
                storeImage: 'assets/images/trainingtab2.jpg',
                storeName: 'Store Name',
              ),
              MarketStoreTile(
                storeImage: 'assets/images/trainingtab2.jpg',
                storeName: 'Store Name',
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 15.0,
            bottom: 10.0,
            top: 15.0,
          ),
          child: CustomText(
            text: 'Products',
            size: 26,
            bold: true,
            alignment: TextAlign.start,
          ),
        ),
        Wrap(
          children: [
            MarketProductTile(
              condition: 'New',
              productImage: 'assets/images/trainingtab2.jpg',
              productTitle: 'Training Tabs - Hoot \& Co',
              stock: true,
              price: '14.99',
            ),
            MarketProductTile(
              condition: 'New',
              productImage: 'assets/images/trainingtab2.jpg',
              productTitle: 'Training Tabs - Hoot \& Co',
              stock: true,
              price: '14.99',
            ),
            MarketProductTile(
              condition: 'New',
              productImage: 'assets/images/trainingtab2.jpg',
              productTitle: 'Training Tabs - Hoot \& Co',
              stock: true,
              price: '14.99',
            ),
            MarketProductTile(
              condition: 'New',
              productImage: 'assets/images/trainingtab2.jpg',
              productTitle: 'Training Tabs - Hoot \& Co',
              stock: true,
              price: '14.99',
            ),
            MarketProductTile(
              condition: 'New',
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
