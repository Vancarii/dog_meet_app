import 'package:dog_meet_app/src/global_components/components/text_styles.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/market/body/all_store_page/store_tile/store_tile.dart';
import 'package:flutter/material.dart';

class AllStoresPage extends StatelessWidget {
  const AllStoresPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        titleSpacing: 0,
        //centerTitle: true,
        title: CustomText(
          text: 'Brands',
          size: 18,
          bold: true,
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Wrap(
            children: [
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
                image: 'assets/images/brands/wolf-republic.jpg',
                storeName: 'Wolf Republic',
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
                image: 'assets/images/brands/nutrience.png',
                storeName: 'Nutrience',
              ),
              StoreTile(
                image: 'assets/images/brands/NWlogo.jpg',
                storeName: 'NorthWest Dog',
              ),
              StoreTile(
                image: 'assets/images/brands/roko.png',
                storeName: 'Roko DogWear',
              ),
              StoreTile(
                image: 'assets/images/brands/ruffland.png',
                storeName: 'Ruffland Kennels',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
