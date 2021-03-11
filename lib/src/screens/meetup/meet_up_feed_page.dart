import 'package:dogmeet_app/src/screens/global/components/text_styles.dart';
import 'file:///D:/flutter/flutterprojects/dog_meet_app/lib/src/screens/global/search/search_screen.dart';
import 'package:dogmeet_app/src/screens/meetup/post/new_meet_up_post.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'map/map_page.dart';
import 'messages/messages_page.dart';

//SOOOOO
//THIS FILE GETTING COMPLICATEDDD
//Listen upp...
//There are 2 statefulwidgets: one that has the pageview and the controller, and
//the other has the dog meet up info
//the meetuppage runs and the initialpage sets it to 1 which is the meetuppage
//the meetup page has two onpress params that take from the meetuppageview widget
//the pageview uses the controller to navigate to the map and messages page
//and you set the params to the onpress for each button
//making the screen slide either way from the button click OR Swiping left or right
//You welcome

ScrollController scrollController;

class MeetUpPageView extends StatefulWidget {
  static const String id = 'meet_up_page';

  @override
  _MeetUpPageViewState createState() => _MeetUpPageViewState();
}

class _MeetUpPageViewState extends State<MeetUpPageView> {
  PageController _controller = PageController(
    initialPage: 1,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _controller,
      children: [
        MapPage(
          onBackPressed: () {
            _controller.animateToPage(
              1,
              duration: Duration(milliseconds: 300),
              curve: Curves.linear,
            );
          },
        ),
        MeetUpPage(
          onMessagePressed: () {
            _controller.animateToPage(
              2,
              duration: Duration(milliseconds: 300),
              curve: Curves.linear,
            );
          },
          onMapPressed: () => _controller.animateToPage(
            0,
            duration: Duration(milliseconds: 300),
            curve: Curves.linear,
          ),
        ),
        MessagesPage(
          onBackPressed: () {
            _controller.animateToPage(
              1,
              duration: Duration(milliseconds: 300),
              curve: Curves.linear,
            );
          },
        ),
      ],
    );
  }
}

class MeetUpPage extends StatefulWidget {
  final VoidCallback onMessagePressed;
  final VoidCallback onMapPressed;

  MeetUpPage({@required this.onMessagePressed, @required this.onMapPressed});

  @override
  _MeetUpPageState createState() => _MeetUpPageState();
}

class _MeetUpPageState extends State<MeetUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: gibsonSemiBoldText(
            'Meet', 0, 0, 0, 0, 18, Colors.black, TextAlign.center),
        leading: IconButton(
            icon: Icon(FontAwesomeIcons.solidMap),
            onPressed: widget.onMapPressed),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                FontAwesomeIcons.solidPaperPlane,
              ),
              onPressed: widget.onMessagePressed
              // do something
              ),
        ],
      ),
      body: ListView(
        padding:
            const EdgeInsets.only(left: 5.0, right: 5.0, top: 5.0, bottom: 55),
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 5.0),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.pushNamed(context, SearchBarScreen.id);
                    },
                    color: Colors.white,
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0))),
                    child: Row(
                      children: <Widget>[
                        gibsonSemiBoldText('Search', 0, 0, 0, 0, 15,
                            Colors.black45, TextAlign.center),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 2, right: 10),
                          child: Container(
                            width: 5,
                            child: Icon(
                              FontAwesomeIcons.search,
                              size: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              MaterialButton(
                elevation: 2,
                color: Color(0xfffc816a),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0))),
                onPressed: () {},
                child: Row(
                  children: <Widget>[
                    gibsonSemiBoldText('FILTER', 0, 0, 0, 0, 15, Colors.black,
                        TextAlign.center),
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Container(
                        width: 5,
                        child: Icon(FontAwesomeIcons.sort),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          NewMeetUpPost(
            accountImage: 'assets/images/rosy.png',
            accountName: 'RosyandMaze',
            location: 'location',
            numOfPeopleGoing: 3,
            time: '3:30',
            amPm: 'am',
            onMeetUpPostSelected: () {
              setState(() {
                //meetUpPanelController.expand();
              });
            },
          ),
          NewMeetUpPost(
            accountImage: 'assets/images/rosy.png',
            accountName: 'RosyandMaze',
            location: 'location',
            numOfPeopleGoing: 3,
            time: '3:30',
            amPm: 'am',
            onMeetUpPostSelected: () {
              setState(() {
                //meetUpPanelController.expand();
              });
            },
          ),
        ],
      ),
    );
  }
}