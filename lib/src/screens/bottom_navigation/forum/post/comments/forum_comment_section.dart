import 'package:dog_meet_app/src/global_components/components/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'new_forum_comment.dart';

class ForumCommentSection extends StatefulWidget {
  static const String id = 'forum_comment_section';

  @override
  _ForumCommentSectionState createState() => _ForumCommentSectionState();
}

class _ForumCommentSectionState extends State<ForumCommentSection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(FontAwesomeIcons.arrowLeft),
          onPressed: () {
            setState(() {
              Navigator.pop(context);
            });
          },
        ),
        elevation: 0,
        centerTitle: true,
        title: CustomText(
          text: 'Comments',
          size: 20,
          bold: true,
          alignment: TextAlign.center,
        ),

        /*gibsonSemiBoldText(
            'Comments', 0, 0, 0, 0, 20, Colors.black, TextAlign.center),*/
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView(
                padding: EdgeInsets.all(5),
                children: <Widget>[
                  NewForumComment(),
                ],
              ),
            ),
            Container(
              color: Colors.black12,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: TextFormField(
                      maxLines: 50,
                      minLines: 1,
                      decoration: new InputDecoration(
                        contentPadding: EdgeInsets.only(left: 10, bottom: 15),
                        alignLabelWithHint: true,
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        labelText: 'Comment',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: GestureDetector(
                      child: Icon(Icons.send_rounded),
                      onTap: () {
                        setState(() {
                          //TODO: ADD FUNC TO SEND COMMENT
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
