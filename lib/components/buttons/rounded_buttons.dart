import 'package:dogmeet_app/components/ui/text_styles.dart';
import 'package:flutter/material.dart';

Row profileTypeRoundedButton(String label, String nextPage, BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Container(
              width: 100,
              height: 100,
              child: RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, nextPage);
                },
                color: Colors.white,
                shape: CircleBorder(),
                elevation: 10,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text(
              '$label',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Gibson Semi Bold',
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    ],
  );
}

Column marketStoreProfileRoundedButton(String image, String nextPage, BuildContext context) {
  return Column(
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.fromLTRB(5, 10, 5, 5),
        child: Container(
          width: 100,
          height: 100,
          child: RawMaterialButton(
            onPressed: () {
              Navigator.pushNamed(context, nextPage);
            },
            fillColor: Colors.white,
            shape: CircleBorder(),
            elevation: 10,
          ),
        ),
      ),
      gibsonSemiBoldText('Store Name', 5, 0, 0, 0, 12, Colors.black, TextAlign.center),
    ],
  );
}
