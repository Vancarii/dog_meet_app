import 'package:dog_meet_app/src/global_components/themes/app_colors.dart';
import 'package:dog_meet_app/src/global_components/route_transitions/route_transitions.dart';
import 'package:dog_meet_app/src/provider/provider_notifier.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/forum/new/post_forum_page.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/market/new/post_listing_page.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/meetup/meet/new/post_meet_page.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/notification/pageview/messages/all_messages_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AnimatedFab extends StatefulWidget {
  final List<IconData> iconList;
  final int pageIndex;
  final VoidCallback fabTapCallback;

  AnimatedFab({
    this.iconList,
    this.pageIndex,
    this.fabTapCallback,
  });

  @override
  _AnimatedFabState createState() => _AnimatedFabState();
}

class _AnimatedFabState extends State<AnimatedFab> {
  fabClickedDestination() {
    setState(() {
      if (widget.pageIndex == 0) {
        Navigator.of(context).push(RouteTransitions().slideUpTransitionType(PostForumPage()));
      } else if (widget.pageIndex == 1) {
        Navigator.of(context).push(RouteTransitions().slideUpTransitionType(PostListingPage()));
      } else if (widget.pageIndex == 2) {
        Navigator.of(context).push(RouteTransitions().slideUpTransitionType(PostMeetPage()));
      } else if (widget.pageIndex == 3) {
        if (Provider.of<ProviderNotifier>(context, listen: false).onMessagesPage == true) {
          //new message
          Provider.of<ProviderNotifier>(context, listen: false).newMessageButtonPressed(true);
          /*messagesSlidingSheetController.snapToExtent(0.6,
              duration: Duration(milliseconds: 300), clamp: true);*/
        } else {
          Provider.of<ProviderNotifier>(context, listen: false).messageFabChanged(true);
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: null,
      backgroundColor: Theme.of(context).accentColor,
      splashColor: Theme.of(context).accentColor,
      elevation: 6,
      highlightElevation: 0,
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 250),
        switchInCurve: Curves.easeInOutSine,
        switchOutCurve: Curves.easeOutSine,
        child: Icon(
          Provider.of<ProviderNotifier>(context).onMessagesPage == true && widget.pageIndex == 3
              //iconList[5] is the new message icon
              ? widget.iconList[5]
              : widget.iconList[widget.pageIndex],
          color: AppColors.colorWhite,
          key: UniqueKey(),
        ),
      ),
      onPressed: widget.pageIndex == 4 ? widget.fabTapCallback : fabClickedDestination,
    );
  }
}
