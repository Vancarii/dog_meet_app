import 'package:dog_meet_app/src/screens/global/components/app_colors.dart';
import 'package:dog_meet_app/src/screens/global/components/text_styles.dart';
import 'package:flutter/material.dart';

class ProductInfo extends StatefulWidget {
  final String condition;
  final String price;
  final String productTitle;

  const ProductInfo({
    @required this.condition,
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
        CustomText(
          text: widget.condition,
          size: 15,
          bold: true,
          color: AppColors.colorPrimaryOrange,
          alignment: TextAlign.start,
          padding: const EdgeInsets.only(top: 5, left: 5, right: 5),
        ),
        CustomText(
          text: widget.productTitle,
          size: 20,
          bold: true,
          alignment: TextAlign.start,
          padding: const EdgeInsets.only(top: 5, bottom: 5, left: 5),
        ),
        CustomText(
          text: '\$' + widget.price,
          size: 20,
          bold: true,
          color: AppColors.colorPrimaryOrange,
          alignment: TextAlign.start,
          padding: const EdgeInsets.only(top: 5, bottom: 5, left: 5),
        ),
        CustomText(
          text: '5 Hours ago',
          size: 12,
          bold: true,
          color: Colors.black26,
          alignment: TextAlign.start,
          padding: const EdgeInsets.only(left: 5),
        ),
        /*gibsonSemiBoldText(
            widget.productTitle, 5, 5, 5, 0, 20, Colors.black, TextAlign.start),
        gibsonSemiBoldText('\$' + widget.price, 0, 5, 5, 5, 20,
            Color(0xfffc816a), TextAlign.start),
        gibsonSemiBoldText(
            '5 Hours ago', 0, 0, 5, 0, 12, Colors.black26, TextAlign.start),*/
      ],
    );
  }
}
