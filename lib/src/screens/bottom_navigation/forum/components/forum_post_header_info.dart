import 'package:dog_meet_app/src/global_components/components/text_styles.dart';
import 'package:flutter/material.dart';

class ForumPostHeaderInfo extends StatelessWidget {
  final String postTime;

  ForumPostHeaderInfo({this.postTime});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        InkWell(
          onTap: () {},
          child: Row(
            children: <Widget>[
              CircleAvatar(
                maxRadius: 18,
              ),
              CustomText(
                text: 'Rosyandmaze',
                size: 12,
                bold: true,
                alignment: TextAlign.center,
                padding: const EdgeInsets.only(left: 5),
              ),
              /*gibsonSemiBoldText('rosyandmaze', 0, 0, 5, 0, 12,
                                Colors.black, TextAlign.center),*/
            ],
          ),
        ),
        Spacer(),
        CustomText(
          text: postTime != null ? postTime : '',
          size: 10,
          bold: true,
          alignment: TextAlign.center,
          color: Colors.black45,
          padding: const EdgeInsets.only(right: 5),
        ),
        /* gibsonSemiBoldText('# Hours ago', 0, 0, 0, 5, 10,
                          Colors.black45, TextAlign.center),*/
        RawChip(
          pressElevation: 0,
          elevation: 4,
          backgroundColor: Color(0xfffc816a),
          label: CustomText(
            text: 'Topic',
            size: 12,
            bold: true,
            alignment: TextAlign.center,
          ),

          /*gibsonSemiBoldText('Topic', 0, 0, 0, 0, 12,
                            Colors.black, TextAlign.center),*/
          onSelected: (bool value) {},
        ),
      ],
    );
  }
}
