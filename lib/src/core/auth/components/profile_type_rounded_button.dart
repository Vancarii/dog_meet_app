import 'package:dog_meet_app/src/global_components/constants/constants.dart';
import 'package:flutter/material.dart';

Row profileTypeRoundedButton(String label, String nextPage, BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, nextPage);
              },
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [kBoxShadow()],
                ),
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
