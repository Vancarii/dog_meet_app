import 'package:dog_meet_app/src/screens/bottom_navigation/forum/post/forum_post.dart';
import 'package:flutter/material.dart';

class ForumTricksPage extends StatelessWidget {
  final _forumTricksRefreshKey = GlobalKey<RefreshIndicatorState>();

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        _forumTricksRefreshKey.currentState?.show(atTop: true);
        //await Future.delayed(Duration(milliseconds: 300));
        //TODO: implement Refresh page
      },
      key: _forumTricksRefreshKey,
      child: ListView(
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
      ),
    );
  }
}
