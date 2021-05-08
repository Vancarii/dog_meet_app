import 'package:dog_meet_app/src/global_components/constants/constants.dart';
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

  Route slideRightToLeftTransitionType(secondPage) {
    return PageRouteBuilder(
      transitionDuration: Duration(milliseconds: 100),
      reverseTransitionDuration: Duration(milliseconds: 150),
      pageBuilder: (context, animation, secondaryAnimation) => secondPage,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = Offset(1.0, 0.0);
        var end = Offset.zero;
        var curve = Curves.easeInOut;

        var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }

  Route slideLeftToRightJoinedTransitionType(currentPage, nextPage) {
    //assert(currentPage != null);

    return PageRouteBuilder(
        transitionDuration: Duration(milliseconds: kSlideLeftToRightJoinedDuration),
        reverseTransitionDuration: Duration(milliseconds: kSlideLeftToRightJoinedDuration),
        maintainState: true,
        pageBuilder: (context, animation, secondaryAnimation) => nextPage,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          var curve = Curves.easeInOut;

          return Stack(
            children: <Widget>[
              SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(-1.0, 0.0),
                  end: const Offset(0.0, 0.0),
                ).animate(
                  CurvedAnimation(
                    parent: animation,
                    curve: curve,
                  ),
                ),
                child: child,
              ),
              SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(0.0, 0.0),
                  end: const Offset(1.0, 0.0),
                ).animate(
                  CurvedAnimation(
                    parent: animation,
                    curve: curve,
                  ),
                ),
                child: currentPage,
              )
            ],
          );
        });
  }
}
