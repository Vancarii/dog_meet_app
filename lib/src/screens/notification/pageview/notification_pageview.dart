import 'package:dog_meet_app/src/screens/notification/pageview/notifications/notifications_page.dart';
import 'package:flutter/material.dart';
import 'package:dog_meet_app/src/screens/notification/pageview/messages/messages_page.dart';

class NotificationsPageView extends StatefulWidget {
  static const String id = 'meet_up_pageview';

  @override
  _NotificationsPageViewState createState() => _NotificationsPageViewState();
}

class _NotificationsPageViewState extends State<NotificationsPageView> {
  PageController pageViewController = PageController(
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageViewController,
      allowImplicitScrolling: true,
      children: [
        NotificationsPage(
          onMessagesPressed: () {
            pageViewController.animateToPage(
              1,
              duration: Duration(milliseconds: 100),
              curve: Curves.linear,
            );
          },
        ),
        MessagesPage(
          onBackPressed: () {
            pageViewController.animateToPage(
              0,
              duration: Duration(milliseconds: 100),
              curve: Curves.linear,
            );
          },
        ),
      ],
    );
  }
}
