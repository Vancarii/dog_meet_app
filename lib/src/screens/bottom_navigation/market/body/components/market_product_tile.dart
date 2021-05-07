import 'package:dog_meet_app/src/global_components/components/app_colors.dart';
import 'package:dog_meet_app/src/global_components/components/text_styles.dart';
import 'package:dog_meet_app/src/global_components/constants.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/market/body/details/market_product_details_page.dart';
import 'package:flutter/material.dart';
import 'package:animations/animations.dart';

class MarketProductTile extends StatefulWidget {
  final String condition;
  final String productImage;
  final String price;
  final String productTitle;
  final bool stock;

  const MarketProductTile({
    this.condition = 'Used',
    this.productImage,
    this.price = 'Free',
    this.productTitle = 'Unknown',
    this.stock = false,
  });

  @override
  _MarketProductTileState createState() => _MarketProductTileState();
}

class _MarketProductTileState extends State<MarketProductTile> {
  @override
  Widget build(BuildContext context) {
    return OpenContainer(
      closedColor: Colors.transparent,
      transitionDuration: Duration(milliseconds: 500),
      closedElevation: 0,
      closedBuilder: (context, action) {
        return SizedBox(
          height: 330,
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
                    //alignment: Alignment.topCenter,
                    child: ClipRRect(
                      borderRadius: BorderRadius.vertical(top: Radius.circular(5)),
                      child: widget.productImage != null
                          ? Image.asset(
                              widget.productImage,
                              fit: BoxFit.cover,
                            )
                          : Align(
                              alignment: Alignment.center,
                              child: CustomText(
                                text: 'No Images',
                                bold: true,
                              ),
                            ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0, left: 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        CustomText(
                          text: widget.condition,
                          size: 12,
                          bold: true,
                          color: AppColors.colorPrimaryOrange,
                        ),
                        CustomText(
                          text: widget.condition == 'New' ? '  ·  ' : '',
                          size: 12,
                          bold: true,
                          color: AppColors.colorOffBlack,
                        ),
                        CustomText(
                          text: widget.condition == 'New'
                              ? widget.stock == true
                                  ? 'In Stock'
                                  : 'Out of Stock'
                              : '',
                          size: 12,
                          bold: true,
                          color: widget.stock == true ? AppColors.colorGreen : AppColors.colorRed,
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
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
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
          firstImage: widget.productImage,
          condition: widget.condition,
          price: widget.price,
          productTitle: widget.productTitle,
          stock: widget.stock,
        );
      },
    );
  }
}
