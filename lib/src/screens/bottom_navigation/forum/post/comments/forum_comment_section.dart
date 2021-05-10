import 'package:dog_meet_app/src/global_components/components/app_colors.dart';
import 'package:dog_meet_app/src/global_components/components/custom_chat_textfield.dart';
import 'package:dog_meet_app/src/global_components/components/text_styles.dart';
import 'package:flutter/material.dart';
import 'new_forum_comment.dart';

class ForumCommentSection extends StatefulWidget {
  static const String id = 'forum_comment_section';

  @override
  _ForumCommentSectionState createState() => _ForumCommentSectionState();
}

class _ForumCommentSectionState extends State<ForumCommentSection> {
  final TextEditingController _forumCommentTextController = TextEditingController();

  @override
  void dispose() {
    _forumCommentTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            setState(() {
              Navigator.pop(context);
            });
          },
        ),
        elevation: 0,
        centerTitle: false,
        title: CustomText(
          text: 'Comments',
          size: 18,
          bold: true,
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
              color: Theme.of(context).primaryColor,
              margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: CustomRoundedTextField(
                      controller: _forumCommentTextController,
                      maxLines: null,
                      borderColor: Theme.of(context).primaryColor,
                      padding: const EdgeInsets.all(0.0),
                      labelText: 'Message',
                      onTextChanged: (value) {},
                      endIcon: IconButton(
                          onPressed: () {
                            _forumCommentTextController.text =
                                _forumCommentTextController.text + '@';
                            print('CONTROLLERYEET' + _forumCommentTextController.text);
                            print('CONTROLLERLENGTH' +
                                _forumCommentTextController.text.length.toString());

                            int currentOffset = _forumCommentTextController.selection.base.offset;

                            _forumCommentTextController.selection =
                                TextSelection.fromPosition(TextPosition(offset: currentOffset));
                          },
                          /* onPressed: () {
                            final _textAddAlternate = _forumCommentTextController.value.text + '@';
                            int currentOffset = _forumCommentTextController.selection.base.offset;
                            _forumCommentTextController.value = TextEditingValue(
                              text: _textAddAlternate,
                              selection: TextSelection.collapsed(offset: currentOffset),
                            );
                          },*/
                          icon: Icon(
                            Icons.alternate_email_rounded,
                            color: Theme.of(context).primaryColorLight,
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: GestureDetector(
                      child: Icon(Icons.send_rounded),
                      onTap: () {
                        setState(() {
                          //TODO: send message
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
