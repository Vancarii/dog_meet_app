import 'package:dog_meet_app/src/screens/global/components/app_colors.dart';
import 'package:dog_meet_app/src/screens/global/components/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:dog_meet_app/src/screens/market/body/components/market_store_rounded_button.dart';
import 'package:dog_meet_app/src/screens/market/body/components/new_market_post.dart';

class MarketAllPage extends StatelessWidget {
  const MarketAllPage({
    Key? key,
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
              MarketStoreRoundedButton(
                storeImage: 'assets/images/boneandbiscuit.png',
                storeName: 'Bone And Biscuit',
              ),
              MarketStoreRoundedButton(
                storeImage: 'assets/images/trainingtab2.jpg',
                storeName: 'Store Name',
              ),
              MarketStoreRoundedButton(
                storeImage: 'assets/images/trainingtab2.jpg',
                storeName: 'Store Name',
              ),
              MarketStoreRoundedButton(
                storeImage: 'assets/images/trainingtab2.jpg',
                storeName: 'Store Name',
              ),
              MarketStoreRoundedButton(
                storeImage: 'assets/images/trainingtab2.jpg',
                storeName: 'Store Name',
              ),
              MarketStoreRoundedButton(
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
            NewMarketPost('New', 'assets/images/trainingtab2.jpg', '14.99',
                'Waterproof Training Tabs - All Colors - 10 inches, durable synthetic leather - Hoot \& Co'),
            NewMarketPost('New', 'assets/images/trainingtab2.jpg', '14.99',
                'Waterproof Training Tabs - Hoot \& Co'),
            NewMarketPost('New', 'assets/images/trainingtab2.jpg', '14.99',
                'Waterproof Training Tabs - All Colors - 10 inches, durable synthetic leather - Hoot \& Co'),
            NewMarketPost('Used', 'assets/images/trainingtab2.jpg', '14.99',
                'Waterproof Training Tabs - All Colors - 10 inches, durable synthetic leather - Hoot \& Co'),
          ],
        ),
      ],
    );
  }
}
