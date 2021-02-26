import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'constants.dart';
import 'text_styles.dart';

class NewMarketPost extends StatefulWidget {
  final Color borderColour;
  final String productImage;
  final String price;
  final String productTitle;

  const NewMarketPost(this.borderColour, this.productImage, this.price, this.productTitle);

  @override
  _NewMarketPostState createState() => _NewMarketPostState();
}

class _NewMarketPostState extends State<NewMarketPost> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          print('ya yeet');
          //TODO: NAVIGATOR TO POST DETAILS PAGE
        });
      },
      child: FractionallySizedBox(
        alignment: Alignment.topLeft,
        widthFactor: 0.5,
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            decoration: BoxDecoration(border: Border.all(color: widget.borderColour, width: 4), borderRadius: BorderRadius.all(Radius.circular(10)), color: Colors.white, boxShadow: [kBoxShadow()]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 250,
                  child: ClipRRect(
                    borderRadius: BorderRadius.vertical(top: Radius.circular(6)),
                    child: Image.asset(
                      widget.productImage,
                      fit: BoxFit.fitHeight,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Wrap(
                    children: <Widget>[
                      gibsonSemiBoldText(widget.productTitle, 0, 0, 0, 0, 15, Colors.black, TextAlign.start),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 5.0, bottom: 5.0),
                  child: Row(
                    children: [
                      Spacer(),
                      gibsonSemiBoldText(widget.price, 0, 0, 0, 5, 18, Color(0xfffc816a), TextAlign.center),
                      Icon(
                        Ionicons.md_pricetag,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
