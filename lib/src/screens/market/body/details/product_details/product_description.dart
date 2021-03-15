import 'package:dog_meet_app/src/screens/global/components/text_styles.dart';
import 'package:flutter/material.dart';

class ProductDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.vertical,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Row(
            children: <Widget>[
              CustomText(
                text: 'Description',
                size: 20,
                bold: true,
                alignment: TextAlign.start,
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
              ),
              /*gibsonSemiBoldText('Description', 10, 10, 5, 5, 20, Colors.black,
                  TextAlign.start),*/
            ],
          ),
        ),
        CustomText(
          text: 'This is the description. Either write alot or write in point '
              'form it doesnt matter. \n \n This is wyld bruh \n \n imma'
              ' make a bomb ass app trust \n \n wahgwan',
          size: 12,
          padding: const EdgeInsets.only(
            left: 5.0,
          ),
        ),
        /* Padding(
          padding: const EdgeInsets.only(
            left: 5.0,
          ),
          child:

          Text(
            'This is the description. Either write alot or write in point '
            'form it doesnt matter. \n \n This is wyld bruh \n \n imma'
            ' make a bomb ass app trust \n \n wahgwan',
            style: TextStyle(color: Colors.black, fontFamily: 'Gibson Regular'),
          ),
        ),*/
      ],
    );
  }
}
