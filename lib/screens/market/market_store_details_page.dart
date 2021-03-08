import 'package:dogmeet_app/components/ui/constants.dart';
import 'package:dogmeet_app/components/ui/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MarketStoreDetailsPage extends StatefulWidget {
  static const String id = 'market_store_details_page';

  final String storeName;
  final String storeImage;

  const MarketStoreDetailsPage({
    @required this.storeImage,
    @required this.storeName,
  });

  @override
  _MarketStoreDetailsPageState createState() => _MarketStoreDetailsPageState();
}

class _MarketStoreDetailsPageState extends State<MarketStoreDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(FontAwesomeIcons.arrowLeft),
          onPressed: () {
            setState(() {
              Navigator.pop(context);
            });
          },
        ),
        elevation: 0,
        centerTitle: true,
        title: gibsonSemiBoldText(
            widget.storeName, 0, 0, 0, 0, 20, Colors.black, TextAlign.center),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              FontAwesomeIcons.ellipsisV,
            ),
            onPressed: () {
              setState(() {
                showCupertinoDialog(
                    context: context,
                    barrierDismissible: true,
                    builder: (BuildContext context) {
                      return CupertinoAlertDialog(
                        title: Text('Actions'),
                        actions: [
                          CupertinoDialogAction(
                            child: Text('Report Store'),
                            onPressed: () {
                              //TODO: ADD FUNCTIONALITY TO REPORT LISTING
                            },
                          ),
                          /*CupertinoDialogAction(
                            child: Text('Hide similar posts'),
                            onPressed: () {

                            },
                          )*/
                        ],
                      );
                    });
              });
            },
          ),
        ],
      ),
      body: SafeArea(
          child: Column(
        children: <Widget>[
          Stack(
            alignment: Alignment.bottomCenter,
            clipBehavior: Clip.none,
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.width / 2,
                child: Image(
                  image: AssetImage('assets/images/trainingtab2.jpg'),
                  fit: BoxFit.fitWidth,
                ),
              ),
              Positioned(
                bottom: -75,
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    boxShadow: [kBoxShadow()],
                    color: Colors.white,
                    shape: BoxShape.circle,
                    image:
                        DecorationImage(image: AssetImage(widget.storeImage)),
                  ),
                ),
              ),
            ],
          )
        ],
      )),
    );
  }
}
