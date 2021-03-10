import 'package:dogmeet_app/src/screens/global/components/text_styles.dart';
import 'package:flutter/material.dart';

class NotificationsPage extends StatefulWidget {
  @override
  _NotificationsPageState createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: gibsonSemiBoldText(
            'Notifications', 0, 0, 0, 0, 20, Colors.black, TextAlign.center),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          gibsonSemiBoldText(
              'Reminders', 0, 10, 10, 0, 20, Colors.black, TextAlign.start),
          InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.only(bottom: 2.0),
              child: Container(
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12, width: 1)),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Wrap(
                    //spacing: 10,
                    runSpacing: 10,
                    children: [],
                  ),
                ),
              ),
            ),
          ),

          gibsonSemiBoldText(
              'Recent', 0, 10, 10, 0, 20, Colors.black, TextAlign.start),
          InkWell(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Colors.black12, width: 0.5))),
              child: Row(
                children: [
                  CircleAvatar(),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        gibsonSemiBoldText('Rosyandmaze', 0, 0, 0, 0, 12,
                            Colors.black, TextAlign.start),
                        gibsonSemiBoldText('messaged you about your listing', 2,
                            0, 0, 0, 10, Colors.black38, TextAlign.start),
                      ],
                    ),
                  ),
                  Spacer(),
                  gibsonSemiBoldText('2 hours ago', 0, 0, 0, 0, 10,
                      Colors.black38, TextAlign.center),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                          padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              )),
                          child: gibsonSemiBoldText('Reply', 0, 0, 0, 0, 12,
                              Colors.black, TextAlign.center)),
                    ),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    child: Image.asset(
                      'assets/images/trainingtab2.jpg',
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ],
              ),
            ),
          ),
//--------------------------------------
          InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.only(bottom: 2.0),
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: Colors.black12, width: 0.5))),
                padding: EdgeInsets.all(6),
                //decoration: BoxDecoration(border: Border.all(color: Colors.black12, width: 1)),
                child: Row(
                  children: [
                    CircleAvatar(),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          gibsonSemiBoldText('Rosyandmaze', 0, 0, 0, 0, 12,
                              Colors.black, TextAlign.start),
                          gibsonSemiBoldText('started following you', 2, 0, 0,
                              0, 10, Colors.black38, TextAlign.start),
                        ],
                      ),
                    ),
                    Spacer(),
                    gibsonSemiBoldText('2 hours ago', 0, 0, 0, 0, 10,
                        Colors.black38, TextAlign.center),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                            padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(5),
                                )),
                            child: gibsonSemiBoldText('Follow Back', 0, 0, 0, 0,
                                12, Colors.black, TextAlign.center)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
