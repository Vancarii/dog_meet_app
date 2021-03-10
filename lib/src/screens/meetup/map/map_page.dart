import 'package:dogmeet_app/src/screens/global/components/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MapPage extends StatefulWidget {
  final VoidCallback onBackPressed;

  MapPage({@required this.onBackPressed});

  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: gibsonSemiBoldText(
            'Map', 0, 0, 0, 0, 20, Colors.black, TextAlign.center),
        actions: [
          IconButton(
              icon: Icon(FontAwesomeIcons.arrowRight),
              onPressed: widget.onBackPressed)
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [Container()],
        ),
      ),
    );
  }
}
