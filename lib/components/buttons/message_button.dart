import 'package:dogmeet_app/components/ui/text_styles.dart';
import 'package:flutter/material.dart';

class MessageButton extends StatefulWidget {
  @override
  _MessageButtonState createState() => _MessageButtonState();
}

class _MessageButtonState extends State<MessageButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(6),
        //decoration: BoxDecoration(border: Border.all(color: Colors.black12, width: 1)),
        child: Row(
          children: <Widget>[
            CircleAvatar(),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  gibsonSemiBoldText('Rosyandmaze', 0, 2, 0, 0, 12, Colors.black, TextAlign.start),
                  gibsonSemiBoldText('Ayo was good bruv you tryna hit up Leigh or nah', 2, 0, 0, 0, 10, Colors.black38, TextAlign.start),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
