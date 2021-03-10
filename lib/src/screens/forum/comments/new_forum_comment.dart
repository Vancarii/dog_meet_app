import 'package:dogmeet_app/src/screens/global/components/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NewForumComment extends StatefulWidget {
  @override
  _NewForumCommentState createState() => _NewForumCommentState();
}

class _NewForumCommentState extends State<NewForumComment> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 5.0),
          child: CircleAvatar(),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              gibsonSemiBoldText('Account Name', 0, 2, 0, 0, 12, Colors.black,
                  TextAlign.start),
              Text(
                'This is YOUR opinion bitch, wtf is this ass crack. Are you EVEN THINKING WITH YOUR BRAIN?!?! theres not a single thought behind those eyes of yours',
                style: TextStyle(fontFamily: 'Gibson Regular', fontSize: 12),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 6.0),
                child: Row(
                  children: [
                    Icon(
                      FontAwesomeIcons.heart,
                      size: 12,
                    ),
                    gibsonSemiBoldText(
                      '10 Likes',
                      0,
                      0,
                      5,
                      0,
                      12,
                      Colors.black38,
                      TextAlign.start,
                    ),
                    Spacer(),
                    Container(
                      child: gibsonSemiBoldText('Reply', 0, 0, 0, 0, 12,
                          Colors.black26, TextAlign.end),
                    ),
                    gibsonSemiBoldText(
                      '4h',
                      0,
                      0,
                      5,
                      0,
                      12,
                      Colors.black26,
                      TextAlign.end,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
