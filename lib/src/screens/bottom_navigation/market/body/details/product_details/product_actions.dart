import 'package:dog_meet_app/src/global_components/themes/app_colors.dart';
import 'package:dog_meet_app/src/global_components/widgets/text_styles.dart';
import 'package:dog_meet_app/src/global_components/route_transitions/transparent_route.dart';
import 'package:dog_meet_app/src/screens/sub_screens/share_sheet/share_sheet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductActions extends StatefulWidget {
  @override
  _ProductActionsState createState() => _ProductActionsState();
}

class _ProductActionsState extends State<ProductActions> {
  bool bookmarked = false;
  bool messageSent = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, bottom: 10),
      child: Row(
        children: <Widget>[
          InkWell(
            onTap: () {
              setState(() {
                bookmarked = !bookmarked;
              });
            },
            borderRadius: BorderRadius.all(Radius.circular(30)),
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: bookmarked == false
                    ? Theme.of(context).primaryColorLight.withOpacity(0.1)
                    : AppColors.colorPrimaryOrange.withOpacity(0.1),
                shape: BoxShape.circle,
                //borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              child: bookmarked == false
                  ? Icon(
                      Icons.bookmark_border_rounded,
                    )
                  : Icon(
                      Icons.bookmark_rounded,
                      color: AppColors.colorPrimaryOrange,
                    ),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                TransparentRoute(
                  duration: 0,
                  builder: (context) => ShareSheet(),
                ),
              );
            },
            borderRadius: BorderRadius.all(Radius.circular(30)),
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColorLight.withOpacity(0.1),
                shape: BoxShape.circle,
                //borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              child: Icon(
                Icons.share,
              ),
            ),
          ),
          Spacer(),
          messageSent == false
              ? Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(-1, 1),
                            blurRadius: 1,
                            spreadRadius: 1,
                          ),
                        ],
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                            bottomLeft: Radius.circular(30)),
                        color: Colors.white,
                      ),
                      child: CustomText(
                        text: 'Hi, is this still available?',
                        size: 15,
                        bold: false,
                        color: AppColors.colorBlack,
                        padding: const EdgeInsets.symmetric(
                          vertical: 10.0,
                          horizontal: 15.0,
                        ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () {
                        setState(() {
                          messageSent = true;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Icon(
                          FontAwesomeIcons.solidPaperPlane,
                          size: 20,
                        ),
                      ),
                    )
                  ],
                )
              : Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: Icon(
                        Icons.check_circle,
                        color: AppColors.colorBrightGreen,
                        size: 18,
                      ),
                    ),
                    CustomText(
                      text: 'Sent!',
                      size: 16,
                      bold: true,
                      color: Theme.of(context).primaryColorLight,
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10.0),
                      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                      decoration: BoxDecoration(
                        color: AppColors.colorGrey.withOpacity(0.2),
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      ),
                      child: CustomText(
                        text: 'View Chat',
                        size: 15,
                        color: Theme.of(context).primaryColorLight,
                      ),
                    ),
                  ],
                ),
        ],
      ),
    );
  }
}
