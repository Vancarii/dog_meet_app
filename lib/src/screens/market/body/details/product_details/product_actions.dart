import 'package:dog_meet_app/src/screens/global/components/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductActions extends StatefulWidget {
  @override
  _ProductActionsState createState() => _ProductActionsState();
}

class _ProductActionsState extends State<ProductActions> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, bottom: 10, right: 10),
      child: Row(
        children: <Widget>[
          InkWell(
            onTap: () {
              setState(() {
                /*if (onTapSave == false) {
                  return onTapSave = true;
                } else {
                  return onTapSave = false;
                }*/
              });
            },
            borderRadius: BorderRadius.all(Radius.circular(30)),
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              child:
                  /*Container(
                          alignment: Alignment.center,
                          width: 24,
                          height: 24,
                          child: Lottie.asset(
                            'assets/bookmark.json',
                            controller: lottieController,
                            animate: onTapSave,
                            repeat: false,

                            //reverse: onTapSave,
                          ),
                        ),*/

                  Icon(
                Icons.bookmark_border_rounded,
              ),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          InkWell(
            onTap: () {
              setState(() {});
            },
            borderRadius: BorderRadius.all(Radius.circular(30)),
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              child: Icon(
                Icons.share,
              ),
            ),
          ),
          Spacer(),
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.black12, offset: Offset(-2, 2), blurRadius: 5, spreadRadius: 5)
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
              padding: const EdgeInsets.only(left: 10, top: 5, bottom: 5, right: 10.0),
            ),

            /*Padding(
                padding: const EdgeInsets.only(left: 10, top: 5, bottom: 5, right: 10.0),
                child:

                Text(
                'Hi, is this still available?',
                style: TextStyle(
                  fontFamily: 'Gibson Regular',
                ),
              ),
                ),*/
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Icon(
              FontAwesomeIcons.solidPaperPlane,
              size: 20,
            ),
          ),
        ],
      ),
    );
  }
}
