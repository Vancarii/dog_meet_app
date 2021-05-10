import 'package:dog_meet_app/src/global_components/components/app_colors.dart';
import 'package:dog_meet_app/src/global_components/components/custom_chat_textfield.dart';
import 'package:dog_meet_app/src/global_components/components/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sliding_sheet/sliding_sheet.dart';
import 'components/chats.dart';

SheetController messagesSlidingSheetController = SheetController();

class MessagesPage extends StatefulWidget {
  final VoidCallback onBackPressed;

  MessagesPage({@required this.onBackPressed});

  @override
  _MessagesPageState createState() => _MessagesPageState();
}

class _MessagesPageState extends State<MessagesPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: SlidingSheet(
        controller: messagesSlidingSheetController,
        closeOnBackdropTap: true,
        closeOnBackButtonPressed: true,
        isBackdropInteractable: true,
        backdropColor: Colors.black54,
        elevation: 5,
        shadowColor: Colors.black54,
        cornerRadius: 15,
        liftOnScrollHeaderElevation: 5,
        //duration: Duration(milliseconds: 150),
        snapSpec: const SnapSpec(
          snap: true, snappings: [0.0, 0.6, 1.0],
          //snappings: [minSnapPosition, SnapSpec.expanded],
        ),
        body: Scaffold(
          appBar: AppBar(
            elevation: 0,
            centerTitle: true,
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: widget.onBackPressed,
            ),
            title: CustomText(
              text: 'Messages',
              size: 18,
              bold: true,
              alignment: TextAlign.center,
            ),
          ),
          body: SafeArea(
            child: ListView(
              children: [
                Chats(),
                Chats(),
              ],
            ),
          ),
        ),
        headerBuilder: (BuildContext context, SheetState state) {
          return Container(
            width: double.infinity,
            height: 50,
            color: Theme.of(context).primaryColor,
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    margin: const EdgeInsets.only(top: 6.0, bottom: 5.0),
                    width: 30,
                    height: 4,
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColorLight.withOpacity(0.2),
                      borderRadius: BorderRadius.all(Radius.circular(2)),
                    ),
                  ),
                ),
                CustomText(
                  text: 'New Message',
                  size: 15,
                  bold: true,
                  padding: const EdgeInsets.only(top: 5.0),
                ),
              ],
            ),
          );
        },
        builder: (BuildContext context, SheetState state) {
          return Container(
            height: MediaQuery.of(context).size.height,
            color: Theme.of(context).primaryColor,
            child: Column(
              children: [
                CustomRoundedTextField(
                  minLines: 1,
                  maxLines: 1,
                  borderColor: Theme.of(context).primaryColor,
                  keyboard: TextInputType.name,
                  labelText: 'Search',
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
