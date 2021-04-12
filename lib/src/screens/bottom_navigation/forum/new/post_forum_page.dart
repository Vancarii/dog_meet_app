import 'package:dog_meet_app/src/global_components/components/app_colors.dart';
import 'package:dog_meet_app/src/global_components/components/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PostForumPage extends StatelessWidget {
  static const String id = 'post_forum_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      //extendBodyBehindAppBar: true,
      backgroundColor: AppColors.colorPrimaryOrange,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: CustomText(
          text: 'New Text Post',
          size: 18,
          bold: true,
          //alignment: TextAlign.center,
        ),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.close_rounded),
        ),
        actions: <Widget>[
          Center(
            child: GestureDetector(
              child: CustomText(
                text: 'Post',
                size: 18,
                color: AppColors.colorDarkSlateGrey,
                bold: true,
                // alignment: TextAlign.center,
                padding: const EdgeInsets.only(right: 15.0),
              ),
              onTap: () {},
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 5.0),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    //margin: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
                    decoration: BoxDecoration(
                      color: AppColors.colorWhite,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                      child: Column(
                        children: [
                          Row(
                            children: <Widget>[
                              RawMaterialButton(
                                onPressed: () {},
                                child: Row(
                                  children: <Widget>[
                                    CircleAvatar(
                                      maxRadius: 18,
                                    ),
                                    CustomText(
                                      text: 'Rosyandmaze',
                                      size: 12,
                                      bold: true,
                                      alignment: TextAlign.center,
                                      padding: const EdgeInsets.only(left: 5),
                                    ),
                                  ],
                                ),
                              ),
                              Spacer(),
                              RawChip(
                                pressElevation: 0,
                                elevation: 4,
                                backgroundColor: Color(0xfffc816a),
                                label: CustomText(
                                  text: 'Add Topic',
                                  size: 12,
                                  bold: true,
                                  alignment: TextAlign.center,
                                ),
                                onSelected: (bool value) {},
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: TextField(
                                    scrollPhysics: NeverScrollableScrollPhysics(),
                                    minLines: 1,
                                    maxLines: 10,
                                    maxLength: 200,
                                    maxLengthEnforcement: MaxLengthEnforcement.enforced,
                                    keyboardType: TextInputType.text,
                                    textAlignVertical: TextAlignVertical.center,
                                    textCapitalization: TextCapitalization.sentences,
                                    cursorColor: AppColors.colorPrimaryOrange,
                                    cursorRadius: Radius.circular(15),
                                    style: TextStyle(
                                        fontSize: 26,
                                        color: AppColors.colorBlack,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Gibson'),
                                    decoration: InputDecoration(
                                        counterText: '',
                                        border: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                        enabledBorder: InputBorder.none,
                                        errorBorder: InputBorder.none,
                                        disabledBorder: InputBorder.none,
                                        hintText: 'Post Title...',
                                        hintStyle: TextStyle(
                                          color: Colors.grey,
                                        )),
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    FontAwesomeIcons.palette,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: TextField(
                              maxLines: null,
                              maxLengthEnforcement: MaxLengthEnforcement.enforced,
                              keyboardType: TextInputType.multiline,
                              textAlignVertical: TextAlignVertical.center,
                              textCapitalization: TextCapitalization.sentences,
                              cursorColor: AppColors.colorPrimaryOrange,
                              cursorRadius: Radius.circular(15),
                              style: TextStyle(
                                  fontSize: 16,
                                  color: AppColors.colorBlack,
                                  //fontWeight: FontWeight.w600,
                                  fontFamily: 'Gibson'),
                              decoration: InputDecoration(
                                  //counterText: '',
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  hintText: 'Enter your text here...',
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AddMediaButtons(title: 'Add Link', icon: FontAwesomeIcons.link),
                  AddMediaButtons(title: 'Add Image', icon: FontAwesomeIcons.camera),
                  AddMediaButtons(title: 'Add Video', icon: Icons.movie),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AddMediaButtons extends StatelessWidget {
  final String title;
  final IconData icon;

  AddMediaButtons({this.title, this.icon});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          //TODO: Add MEdia FUnc
        },
        child: Container(
          alignment: Alignment.center,
          height: 35,
          margin: const EdgeInsets.only(top: 5.0, left: 2.0, right: 2.0, bottom: 2.0),
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: AppColors.colorWhite,
            boxShadow: [
              kBoxShadow(),
            ],
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
          ),
          child: FittedBox(
            fit: BoxFit.fitWidth,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  icon,
                  size: 15,
                ),
                CustomText(
                  text: title,
                  size: 15,
                  bold: true,
                  padding: const EdgeInsets.only(left: 5.0),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
