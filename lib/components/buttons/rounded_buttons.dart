import 'package:flutter/material.dart';

Row profileTypeRoundedButton(
    String label, String nextPage, BuildContext context) {
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
