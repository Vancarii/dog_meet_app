import 'package:dog_meet_app/src/global_components/components/app_colors.dart';
import 'package:dog_meet_app/src/global_components/components/text_styles.dart';
import 'package:dog_meet_app/src/global_components/route_transitions/route_transitions.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/market/body/all_store_page/all_stores_page.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/market/body/all_store_page/store_tile/store_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'components/market_store_tile.dart';
import 'components/market_product_tile.dart';

class MarketAllPage extends StatelessWidget {
  const MarketAllPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(top: 20.0, bottom: 60),
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
                child: InkWell(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () {
                    Navigator.push(context,
                        RouteTransitions().slideRightToLeftTransitionType(AllStoresPage()));
                  },
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
                      color: AppColors.colorOffBlack,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 140,
          child: ListView(
            padding: EdgeInsets.only(left: 5),
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              StoreTile(
                image: 'assets/images/brands/wolf-republic.jpg',
                storeName: 'Wolf Republic',
              ),
              StoreTile(
                image: 'assets/images/brands/hoot-and-co.jpg',
                storeName: 'Hoot and Co',
              ),
              StoreTile(
                image: 'assets/images/brands/KONG.jpg',
                storeName: 'Kong',
              ),
              StoreTile(
                image: 'assets/images/brands/Kurgo.jpg',
                storeName: 'Kurgo',
              ),
              StoreTile(
                image: 'assets/images/brands/Wilderdog-Logo.png',
                storeName: 'WilderDog',
              ),
              StoreTile(
                image: 'assets/images/brands/fi.png',
                storeName: 'Fi Dog',
              ),
              StoreTile(
                image: 'assets/images/brands/keelokona.jpg',
                storeName: 'Keelo and Kona Treats',
              ),
              StoreTile(
                image: 'assets/images/brands/landshark.png',
                storeName: 'Land Shark Supply',
              ),
              StoreTile(
                image: 'assets/images/brands/NWlogo.jpg',
                storeName: 'NorthWest Dog',
              ),
              StoreTile(
                image: 'assets/images/brands/roko.png',
                storeName: 'Roko DogWear',
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 15.0,
            bottom: 10.0,
            top: 10.0,
          ),
          child: CustomText(
            text: 'Shop',
            size: 26,
            bold: true,
            alignment: TextAlign.start,
          ),
        ),
        Wrap(
          children: [
            MarketProductTile(
              condition: 'New',
              productImage: 'assets/images/products/bandanaNW.jpg',
              productTitle: 'NorthWest Dog Bandanna',
              stock: false,
              price: '10.00',
            ),
            MarketProductTile(
              condition: 'New',
              productImage: 'assets/images/products/fi_dog.png',
              productTitle: 'Fi-Dogs GPS Collar',
              stock: true,
              price: '59.99',
            ),
            MarketProductTile(
              condition: 'New',
              productImage: 'assets/images/products/hootleash.jpg',
              productTitle: 'Multi Function Leash - Hoot \& Co',
              stock: true,
              price: '14.99',
            ),
            MarketProductTile(
              condition: 'New',
              productImage: 'assets/images/products/kennel.jpg',
              productTitle: 'Ruffland Kennels - Large Orange Crate',
              stock: false,
              price: '199.99',
            ),
            MarketProductTile(
              condition: 'New',
              productImage: 'assets/images/products/konatreats.jpg',
              productTitle: 'Keelo and Kona dried treats',
              stock: true,
              price: '14.99',
            ),
            MarketProductTile(
              condition: 'New',
              productImage: 'assets/images/products/kongwobbler.jpg',
              productTitle: 'Kong Wobbler',
              stock: true,
              price: '14.99',
            ),
            MarketProductTile(
              condition: 'New',
              productImage: 'assets/images/products/landsharkcollar.jpg',
              productTitle: '1.5" Collar with Cobra Buckle',
              stock: true,
              price: '49.99',
            ),
            MarketProductTile(
              condition: 'New',
              productImage: 'assets/images/products/nutrience.jpg',
              productTitle: 'Nutrience Dog Food',
              stock: true,
              price: '69.99',
            ),
            MarketProductTile(
              condition: 'New',
              productImage: 'assets/images/products/rokocollar.jpg',
              productTitle: 'Roko Dog Wear 1.5" Collar',
              stock: true,
              price: '39.99',
            ),
            MarketProductTile(
              condition: 'New',
              productImage: 'assets/images/products/wilderharness.png',
              productTitle: 'WilderDog Pink Harness',
              stock: true,
              price: '60.00',
            ),
            MarketProductTile(
              condition: 'New',
              productImage: 'assets/images/products/wolfbackpack.jpg',
              productTitle: 'Wolf Republic dog backpack',
              stock: true,
              price: '99.99',
            ),
          ],
        ),
      ],
    );
  }
}
