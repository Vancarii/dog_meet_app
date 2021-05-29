import 'package:dog_meet_app/src/global_components/themes/app_colors.dart';
import 'package:dog_meet_app/src/global_components/widgets/custom_chat_textfield.dart';
import 'package:dog_meet_app/src/global_components/widgets/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class ShareSheet extends StatefulWidget {
  const ShareSheet({Key key}) : super(key: key);

  @override
  _ShareSheetState createState() => _ShareSheetState();
}

class _ShareSheetState extends State<ShareSheet> {
  SheetController shareSheetController = SheetController();

  @override
  void initState() {
    Future.delayed(Duration(milliseconds: 0), () {
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
          });
        },
        controller: shareSheetController,
        closeOnBackdropTap: true,
        closeOnBackButtonPressed: true,
        isBackdropInteractable: true,
        //color: Theme.of(context).primaryColorLight,
        backdropColor: AppColors.colorBlack.withOpacity(0.5),
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
                      color: Colors.black12,
                      borderRadius: BorderRadius.all(Radius.circular(2)),
                    ),
                  ),
                ),
                CustomText(
                  text: 'Share',
                  size: 15,
                  bold: true,
                  color: Theme.of(context).primaryColorLight,
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
                    borderColor: Theme.of(context).primaryColor,
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
