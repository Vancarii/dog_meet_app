import 'package:dogmeet_app/components/ui/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ionicons/ionicons.dart' as ionIcons;
import 'package:dogmeet_app/screens/forum/forums_feed_page.dart';

class NewForumsPost extends StatefulWidget {
  @override
  _NewForumsPostState createState() => _NewForumsPostState();
}

class _NewForumsPostState extends State<NewForumsPost> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(-5, 10), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      RawMaterialButton(
                        onPressed: () {},
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: CircleAvatar(
                                maxRadius: 18,
                              ),
                            ),
                            gibsonSemiBoldText('rosyandmaze', 0, 0, 5, 0, 12,
                                Colors.black, TextAlign.center),
                          ],
                        ),
                      ),
                      Spacer(),
                      gibsonSemiBoldText('# Hours ago', 0, 0, 0, 5, 10,
                          Colors.black45, TextAlign.center),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: RawChip(
                          elevation: 2,
                          backgroundColor: Color(0xfffc816a),
                          label: gibsonSemiBoldText('Topic', 0, 0, 0, 0, 12,
                              Colors.black, TextAlign.center),
                          onSelected: (bool value) {
                            setState(() {});
                          },
                        ),
                      ),
                    ],
                  ),
                  /*gibsonSemiBoldText('TITLE OF FORUM', 5, 5, 10, 0,
                                  20, Colors.black),*/
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5, 5, 0, 5),
                    child: RichText(
                      text: TextSpan(
                          text: 'Hello bitches'.toUpperCase(),
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Gibson Semi Bold'),
                          children: <TextSpan>[
                            TextSpan(
                              text: ' WahGwan'.toUpperCase(),
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.orange,
                              ),
                            ),
                          ]),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Hey guys! Sorry I haven't been so active the last couple days. Rosy got attacked by another dog a few days ago😔 Rosy was just greeting the dog when he thought Rosy was trying to take his ball, and straight up attacked her. I lunged and shoved him off and even got my hand all bloody. Thankfully Rosy was fine physically and she still played happily at another park. But there was something about this that pissed me off... "
                              "Rosy being attacked really sucks and I really hope it never happens again. But the fact that the owner did nothing when it happened, and also came up with different excuses to justify her dog attacking Rosy was unacceptable. She went on about how her dog is old and was a search and rescue dog, and that it's okay for something like this to happen? She even knew her dog was ball possessive and she could've taken the ball away when he's not fetching or even not taken him in the dog park. She continued talking about how nothing serious happened and gave more excuses, but the fact is that I don't care if your dog is a hero or if he's the smartest dog in the world, he cannot go around attacking dogs while the owner lets it happen. The owner should be taking responsibility and acknowledging the problem and handling it accordingly."
                              "I just wanted a simple and sincere apology. That's all. Take responsibility of what happened and accept that your were wrong for not being in control of your dog. If you know he has a behavioral problem, see a trainer or don't let it happen.",
                              maxLines: 20,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {});
                              },
                              child: Text(
                                '$readMoreText',
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      IconButton(
                        icon: tennisBallIcon,
                        onPressed: () {
                          setState(() {
                            if (boolTennisBall == false) {
                              boolTennisBall = true;
                              tennisBallIcon = Icon(
                                ionIcons.Ionicons.tennisball,
                                color: Color(0xfffc816a),
                              );
                            } else {
                              boolTennisBall = false;
                              tennisBallIcon = Icon(
                                ionIcons.Ionicons.tennisball_outline,
                              );
                            }
                          });
                          print('like');
                        },
                        iconSize: 28,
                        padding: EdgeInsets.only(left: 10, bottom: 8),
                        constraints: BoxConstraints(),
                      ),
                      IconButton(
                        iconSize: 28,
                        icon: Icon(ionIcons.Ionicons.chatbubbles_outline),
                        onPressed: () {
                          print('comment');
                        },
                        padding: EdgeInsets.only(left: 10, bottom: 8),
                        constraints: BoxConstraints(),
                      ),
                      IconButton(
                        icon: Icon(FontAwesomeIcons.paperPlane),
                        onPressed: () {
                          print('share');
                        },
                        padding: EdgeInsets.only(left: 10, bottom: 8),
                        constraints: BoxConstraints(),
                      ),
                      IconButton(
                        iconSize: 28,
                        icon: Icon(ionIcons.Ionicons.bookmark_outline),
                        onPressed: () {
                          print('share');
                        },
                        padding: EdgeInsets.only(left: 10, bottom: 8),
                        constraints: BoxConstraints(),
                      ),
                    ],
                  ),
                  gibsonSemiBoldText('69 others threw the ball', 0, 5, 10, 5,
                      12, Colors.black, TextAlign.center),
                  gibsonSemiBoldText('View all 20 barks', 0, 10, 10, 5, 12,
                      Colors.black, TextAlign.center),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
