import 'package:dog_meet_app/src/global_components/themes/app_colors.dart';
import 'package:dog_meet_app/src/global_components/widgets/custom_chat_textfield.dart';
import 'package:dog_meet_app/src/global_components/widgets/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:sliding_sheet/sliding_sheet.dart';
import 'components/chats.dart';
import 'package:dog_meet_app/src/provider/provider_notifier.dart';

class MessagesPage extends StatefulWidget {
  final VoidCallback onBackPressed;

  MessagesPage({@required this.onBackPressed});

  @override
  _MessagesPageState createState() => _MessagesPageState();
}

class _MessagesPageState extends State<MessagesPage> {
  SheetController messagesSlidingSheetController = SheetController();

  @override
  Widget build(BuildContext context) {
    if (Provider.of<ProviderNotifier>(context).onNewMessagePressed == true) {
      messagesSlidingSheetController.snapToExtent(0.6,
          duration: Duration(milliseconds: 300), clamp: true);
    }
    return SafeArea(
      bottom: false,
      child: SlidingSheet(
        listener: (state) {
          if (state.isHidden) {
            Provider.of<ProviderNotifier>(context, listen: false)
                .newMessageButtonPressed(false);
          }
        },
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
              physics: const BouncingScrollPhysics(),
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
                      color:
                          Theme.of(context).primaryColorLight.withOpacity(0.2),
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
