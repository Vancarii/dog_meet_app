import 'package:dogmeet_app/components/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MessagesPage extends StatefulWidget {
  final VoidCallback onBackPressed;

  MessagesPage({@required this.onBackPressed});

  @override
  _MessagesPageState createState() => _MessagesPageState();
}

class _MessagesPageState extends State<MessagesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        leading: IconButton(icon: Icon(FontAwesomeIcons.arrowLeft), onPressed: widget.onBackPressed),
        title: gibsonSemiBoldText('Messages', 0, 0, 0, 0, 20, Colors.black, TextAlign.center),
        actions: [IconButton(icon: Icon(FontAwesomeIcons.plusSquare), onPressed: () {})],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              child: gibsonSemiBoldText('Rosyandmaze', 0, 0, 0, 0, 12, Colors.black, TextAlign.start),
            )
          ],
        ),
      ),
    );
  }
}
