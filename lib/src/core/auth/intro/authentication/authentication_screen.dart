import 'package:dog_meet_app/src/core/auth/intro/authentication/login/login_screen.dart';
import 'package:dog_meet_app/src/global_components/route_transitions/route_transitions.dart';
import 'package:flutter/material.dart';

class AuthenticationScreen extends StatefulWidget {
  const AuthenticationScreen({Key key}) : super(key: key);

  @override
  _AuthenticationScreenState createState() => _AuthenticationScreenState();
}

class _AuthenticationScreenState extends State<AuthenticationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        alignment: Alignment.center,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Card(
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            RouteTransitions().slideRightToLeftJoinedTransitionType(
                                AuthenticationScreen(), LoginScreen()));
                      },
                      icon: Icon(Icons.login_rounded))
                ],
              ),
            ),
            Card(
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            RouteTransitions().slideRightToLeftJoinedTransitionType(
                                AuthenticationScreen(), LoginScreen()));
                      },
                      icon: Icon(Icons.lock))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
