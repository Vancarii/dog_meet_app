import 'package:dog_meet_app/src/provider/provider_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'messages/all_messages_screen.dart';
import 'notifications/notifications_page.dart';

class NotificationsPageView extends StatefulWidget {
  static const String id = 'meet_up_pageview';

  @override
  _NotificationsPageViewState createState() => _NotificationsPageViewState();
}

class _NotificationsPageViewState extends State<NotificationsPageView> {
  PageController _notifPageViewController = PageController(
    initialPage: 0,
  );

  @override
  void dispose() {
    super.dispose();
    _notifPageViewController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    setState(() {
      if (Provider.of<ProviderNotifier>(context).onMessagesPage == true) {
        _notifPageViewController.animateToPage(
          1,
          duration: Duration(milliseconds: 200),
          curve: Curves.linear,
        );
      }
    });
    return PageView(
      controller: _notifPageViewController,
      onPageChanged: (int page) {
        if (page == 0) {
          Provider.of<ProviderNotifier>(context, listen: false).messageFabChanged(false);
        }
        if (page == 1) {
          Provider.of<ProviderNotifier>(context, listen: false).messageFabChanged(true);
        }
      },
      //allowImplicitScrolling: false,
      children: [
        NotificationsPage(
          onMessagesPressed: () {
            _notifPageViewController.animateToPage(
              1,
              duration: Duration(milliseconds: 200),
              curve: Curves.linear,
            );
          },
        ),
        MessagesPage(
          onBackPressed: () {
            _notifPageViewController.animateToPage(
              0,
              duration: Duration(milliseconds: 200),
              curve: Curves.linear,
            );
          },
        ),
      ],
    );
  }
}
