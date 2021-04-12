import 'package:dog_meet_app/src/global_components/components/app_colors.dart';
import 'package:dog_meet_app/src/global_components/components/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'components/product_condition_chips.dart';

enum conditionType {
  BrandNew,
  UsedLikeNew,
  UsedGood,
  UsedFair,
}

class PostListingPage extends StatefulWidget {
  static const String id = 'post_listing_page';

  @override
  _PostListingPageState createState() => _PostListingPageState();
}

class _PostListingPageState extends State<PostListingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomInset: true,
      backgroundColor: AppColors.colorPrimaryOrange,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: CustomText(
          text: 'New Listing Post',
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
          child: SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.colorWhite,
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 10.0,
                        bottom: 15.0,
                        right: 5.0,
                      ),
                      child: RichText(
                        text: TextSpan(
                            text: 'Add Images ',
                            style: TextStyle(
                              color: AppColors.colorBlack,
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Gibson',
                            ),
                            children: [
                              TextSpan(
                                  text: '(Hold and Drag to rearrange)',
                                  style: TextStyle(
                                    fontFamily: 'Gibson',
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                    color: AppColors.colorBlack.withOpacity(0.5),
                                  ))
                            ]),
                      ),
                    ),
                    GridView.builder(
                      //padding: const EdgeInsets.all(5.0),
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        childAspectRatio: 1.0,
                        mainAxisSpacing: 10.0,
                        crossAxisSpacing: 10.0,
                      ),
                      itemCount: 8,
                      itemBuilder: (context, index) {
                        return InkWell(
                          child: Container(
                            decoration: BoxDecoration(
                              color: AppColors.colorGrey.withOpacity(0.5),
                              borderRadius: BorderRadius.all(Radius.circular(5)),
                            ),
                            child: Icon(
                              Icons.add,
                              color: AppColors.colorDarkSlateGrey,
                            ),
                          ),
                        );
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: TextField(
                        scrollPhysics: NeverScrollableScrollPhysics(),
                        minLines: 1,
                        maxLines: 5,
                        maxLength: 60,
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
                              color: AppColors.colorGrey,
                            )),
                      ),
                    ),
                    /*CustomText(
                      text: 'Product Condition',
                      size: 20,
                      bold: true,
                      padding: const EdgeInsets.only(bottom: 5.0),
                    ),*/
                    ProductConditionChips(),
                    /*CustomText(
                      text: 'Price',
                      size: 20,
                      bold: true,
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                    ),*/
                    TextField(
                      scrollPhysics: NeverScrollableScrollPhysics(),
                      minLines: 1,
                      maxLines: 5,
                      maxLength: 60,
                      maxLengthEnforcement: MaxLengthEnforcement.enforced,
                      keyboardType: TextInputType.number,
                      textAlignVertical: TextAlignVertical.center,
                      textCapitalization: TextCapitalization.sentences,
                      cursorColor: AppColors.colorPrimaryOrange,
                      cursorRadius: Radius.circular(15),
                      inputFormatters: [
                        FilteringTextInputFormatter.deny(RegExp('[.]')),
                        FilteringTextInputFormatter.deny(RegExp('[-]')),
                      ],
                      style: TextStyle(
                          fontSize: 26,
                          color: AppColors.colorBlack,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Gibson'),
                      decoration: InputDecoration(
                          //isDense: true,
                          prefixIcon: Padding(
                            padding: const EdgeInsets.only(right: 5.0),
                            child: CustomText(
                              text: '\$',
                              size: 26,
                              bold: true,
                              color: AppColors.colorGrey,
                            ),
                          ),
                          prefixIconConstraints: BoxConstraints(minWidth: 0, minHeight: 0),
                          counterText: '',
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          hintText: 'Price...',
                          hintStyle: TextStyle(
                            color: AppColors.colorGrey,
                          )),
                    ),
                    TextField(
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
                        hintText: 'Description...',
                        hintStyle: TextStyle(
                          color: AppColors.colorGrey,
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 1,
                    ),
                    CustomText(
                      text: 'Tags',
                      size: 16,
                      bold: true,
                      color: AppColors.colorGrey,
                      padding: const EdgeInsets.only(top: 5.0, left: 5.0),
                    ),
                    Container(
                      width: double.infinity,
                      height: 100,
                      margin: const EdgeInsets.symmetric(vertical: 5.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.colorGrey),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
