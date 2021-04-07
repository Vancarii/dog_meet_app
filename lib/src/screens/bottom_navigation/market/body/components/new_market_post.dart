import 'package:dog_meet_app/src/global_components/components/app_colors.dart';
import 'package:dog_meet_app/src/global_components/components/text_styles.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/market/body/details/market_product_details_page.dart';
import 'package:flutter/material.dart';
import 'package:animations/animations.dart';

class NewMarketPost extends StatefulWidget {
  final String condition;
  final String productImage;
  final String price;
  final String productTitle;

  const NewMarketPost(
    this.condition,
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
      closedColor: Colors.transparent,
      transitionDuration: Duration(milliseconds: 500),
      closedElevation: 0,
      closedBuilder: (context, action) {
        return SizedBox(
          width: MediaQuery.of(context).size.width / 2,
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              decoration: BoxDecoration(
                  //border: Border.all(color: widget.borderColour, width: 4),
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  color: Colors.white,
                  boxShadow: [kBoxShadow()]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 250,
                    child: ClipRRect(
                      borderRadius: BorderRadius.vertical(top: Radius.circular(5)),
                      child: Image.asset(
                        widget.productImage,
                        fit: BoxFit.cover,
                        alignment: Alignment.topCenter,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0, left: 5.0),
                    child: Wrap(
                      children: <Widget>[
                        CustomText(
                          text: widget.condition,
                          size: 12,
                          bold: true,
                          color: AppColors.colorPrimaryOrange,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Wrap(
                      children: <Widget>[
                        Text(
                          widget.productTitle,
                          style: TextStyle(
                            fontFamily: 'Gibson',
                            fontWeight: FontWeight.w600,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.fade,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0, bottom: 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomText(
                          text: '\$' + widget.price,
                          size: 15,
                          bold: true,
                          alignment: TextAlign.center,
                          color: AppColors.colorPrimaryOrange,
                          padding: const EdgeInsets.only(right: 5),
                        )
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
          condition: widget.condition,
          price: widget.price,
          productTitle: widget.productTitle,
        );
      },
    );
  }
}
