import 'package:dog_meet_app/src/screens/forum/post/new_forums_post.dart';
import 'package:flutter/material.dart';

class ForumFunnyPage extends StatefulWidget {
  @override
  _ForumFunnyPageState createState() => _ForumFunnyPageState();
}

class _ForumFunnyPageState extends State<ForumFunnyPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(top: 20.0, left: 5.0, right: 5.0, bottom: 60.0),
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            NewForumsPost(),
            NewForumsPost(),
          ],
        ),
      ],
    );
  }
}
