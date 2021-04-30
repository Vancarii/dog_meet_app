import 'package:dog_meet_app/src/global_components/components/app_colors.dart';
import 'package:dog_meet_app/src/global_components/components/custom_chat_textfield.dart';
import 'package:dog_meet_app/src/global_components/components/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReviewsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 0,
        centerTitle: false,
        title: CustomText(
          text: 'Reviews',
          size: 18,
          bold: true,
        ),
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
                    child: CustomRoundedTextField(
                      maxLines: null,
                      padding: const EdgeInsets.all(0.0),
                      labelText: 'Message',
                      endIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.image,
                            color: AppColors.colorBlack,
                          )),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: InkWell(
                        child: CustomText(
                          text: 'Post',
                          size: 18,
                          bold: true,
                        ),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
