import 'package:animations/animations.dart';
import 'package:dog_meet_app/src/global_components/components/text_styles.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/market/body/details/market_store_details_page.dart';

import 'package:flutter/material.dart';

class MarketStoreRoundedButton extends StatefulWidget {
  final String storeName;
  final String storeImage;

  const MarketStoreRoundedButton({
    this.storeImage,
    this.storeName,
  });

  @override
  _MarketStoreRoundedButtonState createState() => _MarketStoreRoundedButtonState();
}

class _MarketStoreRoundedButtonState extends State<MarketStoreRoundedButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 5.0, right: 5.0, top: 10, bottom: 10),
          child: OpenContainer(
            transitionDuration: Duration(milliseconds: 500),
            closedElevation: 3,
            closedShape:
                RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
            openBuilder: (context, action) {
              return MarketStoreDetailsPage(
                storeName: widget.storeName,
                storeImage: widget.storeImage,
              );
            },
            closedBuilder: (context, action) {
              return Container(
                width: 100,
                height: 100,
                child: Container(
                  child: Image(
                    image: AssetImage(widget.storeImage),
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          ),
        ),
        CustomText(
          text: widget.storeName,
          size: 12,
          bold: true,
          alignment: TextAlign.center,
          padding: const EdgeInsets.only(top: 5),
        ),
        /*gibsonSemiBoldText(
            widget.storeName, 5, 0, 0, 0, 12, Colors.black, TextAlign.center),*/
      ],
    );
  }
}
