import 'package:dogmeet_app/components/ui/constants.dart';
import 'file:///C:/Users/xnycw/AndroidStudioProjects/dog_meet_app/lib/components/posts/new_market_post.dart';
import 'file:///C:/Users/xnycw/AndroidStudioProjects/dog_meet_app/lib/components/buttons/rounded_buttons.dart';
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
              marketStoreProfileRoundedButton('image', 'null', context),
              marketStoreProfileRoundedButton('image', 'null', context),
              marketStoreProfileRoundedButton('image', 'null', context),
              marketStoreProfileRoundedButton('image', 'null', context),
              marketStoreProfileRoundedButton('image', 'null', context),
              marketStoreProfileRoundedButton('image', 'null', context),
            ],
          ),
        ),
        Wrap(
          children: [
            NewMarketPost(kPrimaryColour(), 'assets/images/trainingtab2.jpg', '14.99', 'Waterproof Training Tabs - All Colors'),
          ],
        ),
      ],
    );
  }
}
