import 'package:dogmeet_app/src/screens/forum/post/new_forums_post.dart';
import 'package:dogmeet_app/src/screens/global/components/text_styles.dart';
import 'package:dogmeet_app/src/screens/global/components/to_the_top_button.dart';
import 'package:dogmeet_app/src/screens/global/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ionicons/ionicons.dart' as ionIcons;

import 'components/forums_page_filter_chip.dart';
import 'components/forums_show_moreless_button.dart';

String readMoreText = 'READ MORE';

Icon tennisBallIcon = Icon(ionIcons.Ionicons.tennisball_outline);

bool boolTennisBall = false;

class ForumsFeedPage extends StatefulWidget {
  static const String id = 'forums_feed_page';

  @override
  _ForumsFeedPageState createState() => _ForumsFeedPageState();
}

class _ForumsFeedPageState extends State<ForumsFeedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: gibsonSemiBoldText(
            'Forum', 0, 0, 0, 0, 20, Colors.black, TextAlign.center),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              FontAwesomeIcons.search,
            ),
            onPressed: () {
              Navigator.pushNamed(context, SearchBarScreen.id);
            },
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          padding:
              const EdgeInsets.only(left: 5.0, top: 5.0, right: 5.0, bottom: 5),
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    gibsonSemiBoldText('Topics', 0, 0, 10, 0, 20, Colors.black,
                        TextAlign.center),
                  ],
                ),
                Wrap(
                  children: <Widget>[
                    ForumsPageFilterChip(topicText: 'Trick Training'),
                    ForumsPageFilterChip(topicText: 'Behavior'),
                    ForumsPageFilterChip(topicText: 'Reactivity'),
                    ForumsPageFilterChip(topicText: 'Agility'),
                    ForumsPageFilterChip(topicText: 'Nose work'),
                    ForumsPageFilterChip(topicText: 'Obedience'),
                    ForumsPageFilterChip(topicText: 'Positive Training'),
                    ForumsPageFilterChip(topicText: 'Advanced Obedience'),
                    ForumsPageFilterChip(topicText: 'Balanced Training'),
                    ShowMoreLessButton(),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    gibsonSemiBoldText('Feed', 10, 10, 10, 0, 20, Colors.black,
                        TextAlign.center),
                  ],
                ),
                NewForumsPost(),
                NewForumsPost(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    toTheTop(),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
