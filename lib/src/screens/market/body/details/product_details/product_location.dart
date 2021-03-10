import 'package:dogmeet_app/src/screens/global/components/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductLocation extends StatefulWidget {
  @override
  _ProductLocationState createState() => _ProductLocationState();
}

class _ProductLocationState extends State<ProductLocation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20.0, left: 5, right: 5, bottom: 10),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.black12,
              offset: Offset(-2, 2),
              blurRadius: 5,
              spreadRadius: 5)
        ],
        borderRadius: BorderRadius.all(Radius.circular(30)),
        color: Colors.white,
      ),
      child: Row(
        children: <Widget>[
          gibsonSemiBoldText(
              'Location', 10, 10, 15, 15, 15, Colors.black, TextAlign.start),
          Spacer(),
          InkWell(
            onTap: () {
              setState(() {
                print('ya yeert view in maps');
              });
            },
            child: gibsonSemiBoldText(
                'View in Maps', 5, 5, 5, 10, 15, Colors.blue, TextAlign.end),
          ),
        ],
      ),
    );
  }
}
