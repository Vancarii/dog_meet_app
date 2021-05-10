import 'package:dog_meet_app/src/global_components/components/app_colors.dart';
import 'package:dog_meet_app/src/global_components/components/text_styles.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/meetup/meet/components/details/meet_up_details_page.dart';
import 'package:flutter/material.dart';

class MapCardMeetDetailsPage extends StatelessWidget {
  final String heroTag;

  const MapCardMeetDetailsPage({Key key, this.heroTag}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: heroTag,
      child: GestureDetector(
        onVerticalDragUpdate: (details) {
          Navigator.pop(context);
        },
        child: Scaffold(
          appBar: AppBar(
            centerTitle: false,
            titleSpacing: 0,
            elevation: 0,
            title: CustomText(
              text: 'Details',
              bold: true,
              size: 18,
            ),
          ),
          body: SafeArea(
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.colorWhite,
                borderRadius: BorderRadius.all(
                  Radius.circular(15.0),
                ),
              ),
              child: ListView(
                children: [MeetUpDetailsPage()],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
