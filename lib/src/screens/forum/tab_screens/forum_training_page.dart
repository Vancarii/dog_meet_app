import 'package:dog_meet_app/src/screens/forum/post/forum_post.dart';
import 'package:flutter/material.dart';

class ForumTrainingPage extends StatefulWidget {
  @override
  _ForumTrainingPageState createState() => _ForumTrainingPageState();
}

class _ForumTrainingPageState extends State<ForumTrainingPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(top: 20.0, left: 5.0, right: 5.0, bottom: 60.0),
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ForumPost(),
            ForumPost(),
          ],
        ),
      ],
    );
  }
}
