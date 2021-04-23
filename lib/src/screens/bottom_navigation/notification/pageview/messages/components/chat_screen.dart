import 'package:dog_meet_app/src/global_components/components/app_colors.dart';
import 'package:dog_meet_app/src/global_components/components/text_styles.dart';
import 'package:flutter/material.dart';

class ChatsScreen extends StatefulWidget {
  @override
  _ChatsScreenState createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        titleSpacing: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: CircleAvatar(
                  //radius: 25,
                  ),
            ),
            CustomText(
              text: 'Rosyandmaze',
              size: 14,
              //bold: true,
              alignment: TextAlign.start,
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.info_outline),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView(
                padding: EdgeInsets.all(5),
                children: <Widget>[],
              ),
            ),
            Container(
              color: Colors.white,
              margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: TextFormField(
                      maxLines: 50,
                      minLines: 1,
                      decoration: new InputDecoration(
                        fillColor: AppColors.colorGrey.withOpacity(0.2),
                        filled: true,
                        contentPadding: EdgeInsets.only(left: 10, bottom: 15),
                        alignLabelWithHint: true,
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        labelText: 'Message',
                        suffixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.image,
                              color: AppColors.colorBlack,
                            )),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 0.0,
                              color: AppColors.colorGrey.withOpacity(0.2),
                            ),
                            borderRadius: BorderRadius.circular(30.0)),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 0.0,
                              color: AppColors.colorGrey.withOpacity(0.2),
                            ),
                            borderRadius: BorderRadius.circular(30.0)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: GestureDetector(
                      child: Icon(Icons.send_rounded),
                      onTap: () {
                        setState(() {
                          //TODO: send message
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
