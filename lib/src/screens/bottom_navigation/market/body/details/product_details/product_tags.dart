import 'package:dog_meet_app/src/global_components/widgets/text_styles.dart';
import 'package:flutter/material.dart';

import 'market_product_tags_chips.dart';

class ProductTags extends StatefulWidget {
  @override
  _ProductTagsState createState() => _ProductTagsState();
}

class _ProductTagsState extends State<ProductTags> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CustomText(
            text: 'Tags',
            size: 15,
            bold: true,
            alignment: TextAlign.start,
          ),
          /*Text(
            'Tags',
            style: AppTextStyles.h15BlackBold,
            textAlign: TextAlign.start,
          ),*/
          Wrap(
            spacing: 5,
            children: [
              MarketProductTagsChips(
                tagWord: 'Traffic Lead',
              ),
              MarketProductTagsChips(
                tagWord: 'Leash',
              ),
              MarketProductTagsChips(
                tagWord: 'Waterproof',
              ),
              MarketProductTagsChips(
                tagWord: 'Training',
              ),
              MarketProductTagsChips(
                tagWord: 'Lead',
              ),
              MarketProductTagsChips(
                tagWord: 'Short',
              ),
              MarketProductTagsChips(
                tagWord: 'Tabs',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
