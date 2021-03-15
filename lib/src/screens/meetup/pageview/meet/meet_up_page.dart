import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sliding_sheet/sliding_sheet.dart';
import 'package:dog_meet_app/src/screens/global/components/text_styles.dart';
import 'package:dog_meet_app/src/screens/meetup/pageview/meet/components/meet_up_details_page.dart';
import 'package:dog_meet_app/src/screens/meetup/pageview/meet/components/meet_up_sliding_header.dart';
import 'package:dog_meet_app/src/screens/meetup/pageview/meet/components/meet_up_feed_page.dart';

class MeetUpPage extends StatefulWidget {
  final VoidCallback onMessagePressed;
  final VoidCallback onMapPressed;

  MeetUpPage({@required this.onMessagePressed, @required this.onMapPressed});

  @override
  _MeetUpPageState createState() => _MeetUpPageState();
}

class _MeetUpPageState extends State<MeetUpPage> {
  SheetController slidingSheetController = SheetController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: CustomText(
          text: 'Meet',
          size: 18,
          bold: true,
        ),
        /*gibsonSemiBoldText(
            'Meet', 0, 0, 0, 0, 18, Colors.black, TextAlign.center),*/
        leading: IconButton(icon: Icon(FontAwesomeIcons.solidMap), onPressed: widget.onMapPressed),
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
      body: SlidingSheet(
        controller: slidingSheetController,
        closeOnBackdropTap: true,
        closeOnBackButtonPressed: true,
        isBackdropInteractable: true,
        elevation: 3,
        cornerRadius: 15,
        liftOnScrollHeaderElevation: 5,
        //duration: Duration(milliseconds: 150),
        snapSpec: const SnapSpec(
          snap: true,
          snappings: [110, double.infinity],
          positioning: SnapPositioning.pixelOffset,
        ),
        body: MeetUpFeedPage(slidingSheetController: slidingSheetController),
        headerBuilder: (context, state) {
          return MeetUpSlidingHeader(slidingSheetController: slidingSheetController);
        },
        builder: (context, state) {
          return MeetUpDetailsPage();
        },
      ),
    );
  }
}
