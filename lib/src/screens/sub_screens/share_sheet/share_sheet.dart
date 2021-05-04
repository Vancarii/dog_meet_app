import 'dart:async';

import 'package:dog_meet_app/src/global_components/components/app_colors.dart';
import 'package:dog_meet_app/src/global_components/components/custom_chat_textfield.dart';
import 'package:dog_meet_app/src/global_components/components/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class ShareSheet extends StatefulWidget {
  const ShareSheet({Key key}) : super(key: key);

  @override
  _ShareSheetState createState() => _ShareSheetState();
}

class _ShareSheetState extends State<ShareSheet> {
  SheetController shareSheetController = SheetController();

  double sheetExtent = 0.0;

  @override
  void initState() {
    /*WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        shareSheetController.snapToExtent(
          0.7,
          clamp: true,
        );
        print('widget built');
      });
    });*/

/*    SchedulerBinding.instance.addPostFrameCallback((_) {
      setState(() {
        shareSheetController.snapToExtent(
          0.7,
          clamp: true,
        );
        print('widget built');
      });
    });*/

    Future.delayed(Duration(milliseconds: 100), () {
      setState(() {
        shareSheetController.snapToExtent(
          0.7,
          clamp: true,
        );
        print('widget built');
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SlidingSheet(
        listener: (state) {
          setState(() {
            //use isHidden or else isCollapsed will pop off both screens
            if (state.isHidden == true) {
              Navigator.pop(context);
            }
            sheetExtent = state.extent;
          });
        },
        controller: shareSheetController,
        closeOnBackdropTap: true,
        closeOnBackButtonPressed: true,
        isBackdropInteractable: true,
        backdropColor: AppColors.colorBlack.withOpacity(sheetExtent),
        elevation: 5,
        shadowColor: Colors.black54,
        cornerRadius: 30,
        liftOnScrollHeaderElevation: 5,
        duration: Duration(milliseconds: 200),
        snapSpec: const SnapSpec(
          snap: true,
          snappings: [0.0, 0.7, double.infinity],
          initialSnap: 0.0,
        ),
        body: Scaffold(
          backgroundColor: Colors.transparent,
          body: InkWell(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () {
              Navigator.pop(context);
              //shareSheetController.snapToExtent(0.7);
            },
          ),
        ),
        headerBuilder: (BuildContext context, SheetState state) {
          return Container(
            width: double.infinity,
            height: 50,
            color: AppColors.colorWhite,
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    margin: const EdgeInsets.only(top: 6.0, bottom: 5.0),
                    width: 30,
                    height: 4,
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.all(Radius.circular(2)),
                    ),
                  ),
                ),
                CustomText(
                  text: 'Share',
                  size: 15,
                  bold: true,
                  padding: const EdgeInsets.only(top: 5.0),
                ),
              ],
            ),
          );
        },
        builder: (BuildContext context, SheetState state) {
          return Material(
            child: Container(
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  CustomRoundedTextField(
                    minLines: 1,
                    maxLines: 1,
                    keyboard: TextInputType.name,
                    labelText: 'Search',
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
