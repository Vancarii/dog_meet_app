import 'package:dogmeet_app/src/screens/global/components/text_styles.dart';
import 'package:flutter/material.dart';

class ProductPosterAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5, top: 20),
      child: Row(
        children: <Widget>[
          CircleAvatar(),
          gibsonSemiBoldText(
              'Account Name', 0, 0, 5, 0, 15, Colors.black, TextAlign.start),
        ],
      ),
    );
  }
}
