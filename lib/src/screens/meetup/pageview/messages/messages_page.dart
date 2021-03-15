import 'package:dog_meet_app/src/screens/global/components/text_styles.dart';
import 'package:dog_meet_app/src/screens/meetup/pageview/messages/components/view_message_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sliding_up_panel/sliding_up_panel_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MessagesPage extends StatefulWidget {
  final VoidCallback onBackPressed;

  MessagesPage({@required this.onBackPressed});

  @override
  _MessagesPageState createState() => _MessagesPageState();
}

class _MessagesPageState extends State<MessagesPage> {
  ScrollController scrollController;

  SlidingUpPanelController newMessagePanelController = SlidingUpPanelController();

  @override
  void initState() {
    scrollController = ScrollController();
    scrollController.addListener(() {
      if (scrollController.offset >= scrollController.position.maxScrollExtent &&
          !scrollController.position.outOfRange) {
        newMessagePanelController.expand();
      } else if (scrollController.offset <= scrollController.position.minScrollExtent &&
          !scrollController.position.outOfRange) {
        newMessagePanelController.anchor();
      } else {}
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: AppBar(
            elevation: 0,
            centerTitle: true,
            leading:
                IconButton(icon: Icon(FontAwesomeIcons.arrowLeft), onPressed: widget.onBackPressed),
            title: CustomText(
              text: 'Messages',
              size: 20,
              bold: true,
              alignment: TextAlign.center,
            ),

            /*Text(
              'Messages',
              style: AppTextStyles.h20BlackBold,
              textAlign: TextAlign.center,
            ),*/
            actions: [
              IconButton(
                  icon: Icon(FontAwesomeIcons.plusSquare),
                  onPressed: () {
                    newMessagePanelController.anchor();
                  })
            ],
          ),
          body: SafeArea(
            child: ListView(
              children: [
                ViewMessageContainer(),
                ViewMessageContainer(),
              ],
            ),
          ),
        ),
        SlidingUpPanelWidget(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 15.0),
            decoration: ShapeDecoration(
              color: Colors.white,
              shadows: [
                BoxShadow(blurRadius: 5.0, spreadRadius: 2.0, color: const Color(0x11000000))
              ],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                ),
              ),
            ),
            child: Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  child: Icon(Icons.menu),
                  height: 50.0,
                ),
                Divider(
                  height: 0.5,
                  color: Colors.grey[300],
                ),
                Flexible(
                  child: Container(
                    child: ListView.separated(
                      controller: scrollController,
                      physics: ClampingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text('list item $index'),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return Divider(
                          height: 0.5,
                        );
                      },
                      shrinkWrap: true,
                      itemCount: 20,
                    ),
                    color: Colors.white,
                  ),
                ),
              ],
              mainAxisSize: MainAxisSize.min,
            ),
          ),
          controlHeight: 50,
          panelController: newMessagePanelController,
          onTap: () {
            if (SlidingUpPanelStatus.anchored == newMessagePanelController.status) {
              newMessagePanelController.collapse();
            } else if (SlidingUpPanelStatus.expanded == newMessagePanelController.status) {
              newMessagePanelController.collapse();
            }
          },
        )
      ],
    );
  }
}
