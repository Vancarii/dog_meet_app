import 'package:dogmeet_app/screens/market/market_product_details_page.dart';
import 'package:flutter/material.dart';
import '../ui/constants.dart';
import '../ui/text_styles.dart';
import 'package:animations/animations.dart';

class NewMarketPost extends StatefulWidget {
  final Color borderColour;
  final String productImage;
  final String price;
  final String productTitle;

  const NewMarketPost(
    this.borderColour,
    this.productImage,
    this.price,
    this.productTitle,
  );

  @override
  _NewMarketPostState createState() => _NewMarketPostState();
}

class _NewMarketPostState extends State<NewMarketPost> {
  @override
  Widget build(BuildContext context) {
    return OpenContainer(
      transitionDuration: Duration(milliseconds: 500),
      closedElevation: 0,
      closedBuilder: (context, action) {
        return SizedBox(
          width: MediaQuery.of(context).size.width / 2,
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: widget.borderColour, width: 4),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.white,
                  boxShadow: [kBoxShadow()]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 250,
                    child: ClipRRect(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(6)),
                      child: Image.asset(
                        widget.productImage,
                        fit: BoxFit.cover,
                        alignment: Alignment.topCenter,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Wrap(
                      children: <Widget>[
                        gibsonSemiBoldText(widget.productTitle, 0, 0, 0, 0, 15,
                            Colors.black, TextAlign.start),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 5.0, bottom: 2.0, top: 2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        gibsonSemiBoldText(widget.price, 0, 0, 0, 5, 18,
                            Color(0xfffc816a), TextAlign.center),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
      openBuilder: (context, action) {
        return MarketProductDetailsPage(
          borderColour: widget.borderColour,
          price: widget.price,
          productTitle: widget.productTitle,
        );
      },
    );
  }
}
