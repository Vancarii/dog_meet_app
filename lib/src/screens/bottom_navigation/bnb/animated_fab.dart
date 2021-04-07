import 'package:dog_meet_app/src/global_components/components/app_colors.dart';
import 'package:dog_meet_app/src/provider/fab_message_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AnimatedFab extends StatefulWidget {
  final List<IconData> iconList;
  final int pageIndex;
  final VoidCallback fabTapCallback;

  AnimatedFab({
    required this.iconList,
    required this.pageIndex,
    required this.fabTapCallback,
  });

  @override
  _AnimatedFabState createState() => _AnimatedFabState();
}

class _AnimatedFabState extends State<AnimatedFab> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      splashColor: AppColors.colorPrimaryOrange,
      elevation: 6,
      highlightElevation: 0,
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 250),
        switchInCurve: Curves.easeInOutSine,
        switchOutCurve: Curves.easeOutSine,
        child: Icon(
          Provider.of<FabMessageNotifier>(context).messageFabClicked == true &&
                  widget.pageIndex == 3
              ? widget.iconList[5]
              : widget.iconList[widget.pageIndex],
          color: Colors.white,
          key: UniqueKey(),
        ),
      ),
      onPressed: widget.pageIndex == 3
          ? () {
              Provider.of<FabMessageNotifier>(context, listen: false).messageFabChanged(true);
            }
          : widget.pageIndex == 4
              ? widget.fabTapCallback
              : null, //TODO: add hero widget animation to post pages
    );
  }
}
