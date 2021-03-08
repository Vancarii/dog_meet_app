import 'package:dogmeet_app/components/buttons/market_store_rounded_button.dart';
import 'package:dogmeet_app/components/ui/constants.dart';
import 'package:dogmeet_app/components/posts/new_market_post.dart';
import 'package:dogmeet_app/components/buttons/rounded_buttons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MarketNewPage extends StatelessWidget {
  const MarketNewPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: double.infinity,
          height: 150,
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              MarketStoreRoundedButton(),
              MarketStoreRoundedButton(),
              MarketStoreRoundedButton(),
              MarketStoreRoundedButton(),
              MarketStoreRoundedButton(),
              MarketStoreRoundedButton(),
            ],
          ),
        ),
        Wrap(
          children: [
            NewMarketPost(kPrimaryColour(), 'assets/images/trainingtab2.jpg',
                '14.99', 'Waterproof Training Tabs - All Colors'),
          ],
        ),
      ],
    );
  }
}
