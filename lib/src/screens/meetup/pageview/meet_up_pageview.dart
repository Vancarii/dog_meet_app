import 'package:flutter/material.dart';
import 'package:dog_meet_app/src/screens/meetup/pageview/map/map_page.dart';
import 'package:dog_meet_app/src/screens/meetup/pageview/meet/meet_up_page.dart';
import 'package:dog_meet_app/src/screens/meetup/pageview/messages/messages_page.dart';

class MeetUpPageView extends StatefulWidget {
  static const String id = 'meet_up_pageview';

  @override
  _MeetUpPageViewState createState() => _MeetUpPageViewState();
}

class _MeetUpPageViewState extends State<MeetUpPageView> {
  PageController _controller = PageController(
    initialPage: 1,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _controller,
      children: [
        MapPage(
          onBackPressed: () {
            _controller.animateToPage(
              1,
              duration: Duration(milliseconds: 300),
              curve: Curves.linear,
            );
          },
        ),
        MeetUpPage(
          onMessagePressed: () {
            _controller.animateToPage(
              2,
              duration: Duration(milliseconds: 300),
              curve: Curves.linear,
            );
          },
          onMapPressed: () => _controller.animateToPage(
            0,
            duration: Duration(milliseconds: 300),
            curve: Curves.linear,
          ),
        ),
        MessagesPage(
          onBackPressed: () {
            _controller.animateToPage(
              1,
              duration: Duration(milliseconds: 300),
              curve: Curves.linear,
            );
          },
        ),
      ],
    );
  }
}
