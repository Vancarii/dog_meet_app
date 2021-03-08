import 'package:dogmeet_app/components/ui/text_styles.dart';
import 'package:flutter/material.dart';

class ProductInfo extends StatefulWidget {
  final Color borderColour;
  final String price;
  final String productTitle;

  const ProductInfo({
    @required this.borderColour,
    @required this.price,
    @required this.productTitle,
  });

  @override
  _ProductInfoState createState() => _ProductInfoState();
}

class _ProductInfoState extends State<ProductInfo> {
  @override
  Widget build(BuildContext context) {
    return Flex(
      crossAxisAlignment: CrossAxisAlignment.start,
      direction: Axis.vertical,
      children: [
        widget.borderColour == Colors.white
            ? gibsonSemiBoldText(
                'Used', 5, 0, 5, 5, 15, Color(0xfffc816a), TextAlign.start)
            : gibsonSemiBoldText(
                'New', 5, 0, 5, 5, 15, Color(0xfffc816a), TextAlign.start),
        gibsonSemiBoldText(
            widget.productTitle, 5, 5, 5, 0, 20, Colors.black, TextAlign.start),
        gibsonSemiBoldText(
            widget.price, 0, 5, 5, 5, 20, Color(0xfffc816a), TextAlign.start),
        gibsonSemiBoldText(
            '5 Hours ago', 0, 0, 5, 0, 12, Colors.black26, TextAlign.start),
      ],
    );
  }
}
