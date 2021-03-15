import 'package:animations/animations.dart';
import 'package:dog_meet_app/src/screens/global/components/text_styles.dart';
import 'package:dog_meet_app/src/screens/market/body/details/market_store_details_page.dart';
import 'package:flutter/material.dart';

class MarketStoreRoundedButton extends StatefulWidget {
  final String storeName;
  final String storeImage;

  const MarketStoreRoundedButton({
    @required this.storeImage,
    @required this.storeName,
  });

  @override
  _MarketStoreRoundedButtonState createState() => _MarketStoreRoundedButtonState();
}

class _MarketStoreRoundedButtonState extends State<MarketStoreRoundedButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 5, 5),
          child: OpenContainer(
            transitionDuration: Duration(milliseconds: 500),
            closedElevation: 3,
            closedShape: CircleBorder(),
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
                    fit: BoxFit.fitHeight,
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
