import 'package:dogmeet_app/components/ui/market_product_tags_chips.dart';
import 'package:dogmeet_app/components/ui/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
          gibsonSemiBoldText(
              'Tags', 0, 0, 0, 0, 15, Colors.black, TextAlign.start),
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
