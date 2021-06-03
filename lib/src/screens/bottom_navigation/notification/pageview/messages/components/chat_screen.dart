import 'package:dog_meet_app/src/global_components/widgets/custom_rounded_textfield.dart';
import 'package:dog_meet_app/src/global_components/widgets/text_styles.dart';
import 'package:dog_meet_app/src/global_components/route_transitions/route_transitions.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/notification/pageview/messages/components/chat_info_screen.dart';
import 'package:dog_meet_app/src/screens/sub_screens/other_profile/other_profile_page.dart';
import 'package:flutter/material.dart';

class ChatsScreen extends StatefulWidget {
  @override
  _ChatsScreenState createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        titleSpacing: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: InkWell(
          onTap: () {
            Navigator.push(
                context, RouteTransitions().slideRightToLeftTransitionType(OtherProfilePage()));
          },
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: CircleAvatar(
                    //radius: 25,
                    ),
              ),
              CustomText(
                text: 'Rosyandmaze',
                size: 14,
                //bold: true,
                alignment: TextAlign.start,
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context, RouteTransitions().slideRightToLeftTransitionType(ChatInfoScreen()));
            },
            icon: Icon(Icons.info_outline),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView(
                padding: EdgeInsets.all(5),
                children: <Widget>[],
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
                      maxLines: null,
                      borderColor: Theme.of(context).primaryColor,
                      padding: const EdgeInsets.all(0.0),
                      labelText: 'Message',
                      endIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.image,
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
