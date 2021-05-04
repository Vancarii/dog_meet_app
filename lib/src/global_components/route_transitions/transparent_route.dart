import 'package:flutter/material.dart';

class TransparentRoute extends PageRoute<void> {
  TransparentRoute({
    @required this.builder,
    this.duration = 350,
    RouteSettings settings,
  })  : assert(builder != null),
        super(settings: settings, fullscreenDialog: false);

  final WidgetBuilder builder;
  final int duration;

  @override
  bool get opaque => false;

  @override
  Color get barrierColor => null;

  @override
  String get barrierLabel => null;

  @override
  bool get maintainState => true;

  @override
  Duration get transitionDuration => Duration(milliseconds: duration);

  @override
  Widget buildPage(
      BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
    final result = builder(context);
    return FadeTransition(
      opacity: Tween<double>(begin: 0, end: 1).animate(animation),
      child: Semantics(
        scopesRoute: true,
        explicitChildNodes: true,
        child: result,
      ),
    );
  }
}

class SlideUpTransparentRoute extends PageRoute<void> {
  SlideUpTransparentRoute({
    @required this.builder,
    RouteSettings settings,
  })  : assert(builder != null),
        super(settings: settings, fullscreenDialog: false);

  final WidgetBuilder builder;

  @override
  bool get opaque => false;

  @override
  Color get barrierColor => null;

  @override
  String get barrierLabel => null;

  @override
  bool get maintainState => true;

  @override
  Duration get transitionDuration => Duration(milliseconds: 350);

  @override
  Widget buildPage(
      BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
    var begin = Offset(0.0, 0.8);
    var end = Offset.zero;
    var curve = Curves.ease;

    final result = builder(context);

    var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

    return SlideTransition(
      position: animation.drive(tween),
      child: Semantics(scopesRoute: true, explicitChildNodes: true, child: result),
    );
  }
}
