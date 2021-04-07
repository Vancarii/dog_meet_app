import 'package:flutter/material.dart';

class SearchBarScreen extends StatefulWidget {
  static const String id = 'search_bar_screen';

  @override
  _SearchBarScreenState createState() => _SearchBarScreenState();
}

class _SearchBarScreenState extends State<SearchBarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: null,
        ),
      ),
    );
  }
}
