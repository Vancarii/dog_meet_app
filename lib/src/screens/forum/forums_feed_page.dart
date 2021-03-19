import 'package:dog_meet_app/src/screens/forum/post/new_forums_post.dart';
import 'package:dog_meet_app/src/screens/global/components/app_colors.dart';
import 'package:dog_meet_app/src/screens/global/components/text_styles.dart';
import 'package:dog_meet_app/src/screens/global/components/to_the_top_button.dart';
import 'file:///D:/flutter/flutterprojects/dog_meet_app/lib/src/screens/global/search/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ionicons/ionicons.dart' as ionIcons;
import 'components/forums_page_filter_chip.dart';

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
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [AppColors.colorPrimaryOrange, AppColors.colorPrimaryYellow])),
        ),
        elevation: 0,
        title: CustomText(
          text: 'Forum',
          size: 18,
          bold: true,
          alignment: TextAlign.center,
        ),

        /*gibsonSemiBoldText(
            'Forum', 0, 0, 0, 0, 18, Colors.black, TextAlign.center),*/
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
            ),
            onPressed: () {
              Navigator.pushNamed(context, SearchBarScreen.id);
            },
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(5.0),
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                  left: 10.0,
                  bottom: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    CustomText(
                      text: 'Topics',
                      size: 26,
                      bold: true,
                      alignment: TextAlign.center,
                    ),
                    /*Text(
                      'Topics',
                      style: AppTextStyles.h1Style,
                    ),*/
                    /*gibsonSemiBoldText('Topics', 0, 0, 0, 0, 25, Colors.black,
                        TextAlign.center),*/
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(30)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  offset: Offset(1, 1),
                                  blurRadius: 2,
                                  spreadRadius: 1,
                                )
                              ]),
                          child: Icon(
                            Icons.keyboard_arrow_right_rounded,
                            size: 30,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
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
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  CustomText(
                    text: 'Feed',
                    size: 26,
                    bold: true,
                    alignment: TextAlign.center,
                    padding: const EdgeInsets.only(top: 15, bottom: 15, left: 10),
                  ),
                  /*gibsonSemiBoldText('Feed', 15, 15, 10, 0, 25, Colors.black, TextAlign.center),*/
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
    );
  }
}
