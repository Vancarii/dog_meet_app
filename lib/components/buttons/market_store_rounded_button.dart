import 'package:animations/animations.dart';
import 'package:dogmeet_app/components/ui/text_styles.dart';
import 'package:dogmeet_app/screens/market/market_store_details_page.dart';
import 'package:flutter/material.dart';

class MarketStoreRoundedButton extends StatefulWidget {
  final String storeName;
  final String storeImage;

  const MarketStoreRoundedButton({
    @required this.storeImage,
    @required this.storeName,
  });

  @override
  _MarketStoreRoundedButtonState createState() =>
      _MarketStoreRoundedButtonState();
}

class _MarketStoreRoundedButtonState extends State<MarketStoreRoundedButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(5, 10, 5, 5),
          child: OpenContainer(
            transitionDuration: Duration(milliseconds: 500),
            closedElevation: 5,
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
        gibsonSemiBoldText(
            widget.storeName, 5, 0, 0, 0, 12, Colors.black, TextAlign.center),
      ],
    );
  }
}
