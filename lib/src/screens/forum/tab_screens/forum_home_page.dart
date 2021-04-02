import 'package:dog_meet_app/src/screens/forum/post/forum_post.dart';
import 'package:flutter/material.dart';

class ForumHomePage extends StatefulWidget {
  @override
  _ForumHomePageState createState() => _ForumHomePageState();
}

class _ForumHomePageState extends State<ForumHomePage> {
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
