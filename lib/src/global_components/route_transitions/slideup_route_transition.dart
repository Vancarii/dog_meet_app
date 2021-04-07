import 'package:flutter/material.dart';

//This is a animation for the new post page to slide up from the bottom

//IMPORTANT: the dy values for the var begin must be an even num or else the bottom nav bar for the
//phone turns black when you pop the page for some reason
//After testing, 0.8 seems to run the smoothest when popping the page while not turning
//the bottom black

class RouteTransitions {
  Route slideUpTransitionType(secondPage) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => secondPage,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = Offset(0.0, 0.8);
        var end = Offset.zero;
        var curve = Curves.ease;

        var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }
}
