import 'package:dog_meet_app/src/screens/global/components/text_styles.dart';
import 'package:flutter/material.dart';

class ViewMessageContainer extends StatefulWidget {
  @override
  _ViewMessageContainerState createState() => _ViewMessageContainerState();
}

class _ViewMessageContainerState extends State<ViewMessageContainer> {
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
                  CustomText(
                    text: 'Rosyandmaze',
                    size: 12,
                    bold: true,
                    alignment: TextAlign.start,
                    padding: const EdgeInsets.only(bottom: 2.0),
                  ),
                  /*Padding(
                    padding: const EdgeInsets.only(bottom: 2.0),
                    child: Text(
                      'Rosyandmaze',
                      style: AppTextStyles.h12BlackBold,
                      textAlign: TextAlign.start,
                    ),
                  ),*/
                  CustomText(
                    text: 'Ayo was good bruv you tryna hit up Leigh or nah',
                    size: 10,
                    color: Colors.grey,
                    alignment: TextAlign.start,
                  ),
                  /*Text(
                    'Ayo was good bruv you tryna hit up Leigh or nah',
                    style: AppTextStyles.b10GreyReg,
                    textAlign: TextAlign.start,
                  ),*/
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
