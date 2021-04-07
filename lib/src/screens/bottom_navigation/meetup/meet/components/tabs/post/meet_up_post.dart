import 'package:dog_meet_app/src/global_components/components/app_colors.dart';
import 'package:dog_meet_app/src/global_components/components/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MeetUpPost extends StatelessWidget {
  final String? accountName;
  final String? postImage;
  final String? location;
  final String? time;
  final int? numOfPeopleGoing;
  final String? amPm;

  final VoidCallback onMeetUpPostSelected;

  MeetUpPost({
    this.postImage,
    this.accountName,
    this.location,
    this.numOfPeopleGoing,
    this.time,
    this.amPm,
    required this.onMeetUpPostSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
        decoration: BoxDecoration(
          color: Colors.white,
          //borderRadius: BorderRadius.all(Radius.circular(15.0)),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 2,
              spreadRadius: 2,
              offset: Offset(2, 2),
            )
          ],
        ),
        child: Column(
          children: <Widget>[
            Container(
              height: 40,
              decoration: BoxDecoration(
                  //color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                top: Radius.circular(15.0),
              )),
              child: Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {},
                    child: Row(
                      children: <Widget>[
                        CircleAvatar(
                          maxRadius: 18,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: CustomText(
                            text: accountName,
                            size: 12,
                            bold: true,
                            alignment: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: InkWell(
                      child: Icon(Icons.more_vert),
                      splashColor: Colors.transparent,
                      onTap: () {
                        showCupertinoDialog(
                            context: context,
                            barrierDismissible: true,
                            builder: (BuildContext context) {
                              return CupertinoAlertDialog(
                                title: Text('Actions'),
                                actions: [
                                  CupertinoDialogAction(
                                    child: Text('Report'),
                                    onPressed: () {
                                      //TODO: ADD FUNCTIONALITY TO REPORT LISTING
                                    },
                                  ),
                                  CupertinoDialogAction(
                                    child: Text('Turn on post notifications'),
                                    onPressed: () {
                                      //TODO; ADD FUNCTIONALITY TO HIDE LISTING AND SIMILAR
                                    },
                                  ),
                                  CupertinoDialogAction(
                                    child: Text('Not Interested'),
                                    onPressed: () {
                                      //TODO; ADD FUNCTIONALITY TO HIDE LISTING AND SIMILAR
                                    },
                                  ),
                                ],
                              );
                            });
                      },
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                onMeetUpPostSelected();
              },
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(bottom: 5.0),
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        CustomText(
                          text: 'Medium Size',
                          size: 12,
                          bold: true,
                          //color: Colors.grey,
                          alignment: TextAlign.center,
                        ),
                        VerticalDivider(
                          indent: 10,
                          endIndent: 10,
                          thickness: 1,
                        ),
                        CustomText(
                          text: numOfPeopleGoing.toString() + ' going',
                          size: 12,
                          //color: Colors.grey,
                          bold: true,
                          alignment: TextAlign.center,
                        ),
                        VerticalDivider(
                          indent: 10,
                          endIndent: 10,
                          thickness: 1,
                        ),
                        CustomText(
                          text: 'Females only',
                          size: 12,
                          //color: Colors.grey,
                          bold: true,
                          alignment: TextAlign.center,
                        ),
                        VerticalDivider(
                          indent: 10,
                          endIndent: 10,
                          thickness: 1,
                        ),
                        CustomText(
                          text: 'Spayed',
                          size: 12,
                          //color: Colors.grey,
                          bold: true,
                          alignment: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    child: GridView.builder(
                      padding: const EdgeInsets.only(bottom: 5),
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        childAspectRatio: 1.0,
                        mainAxisSpacing: 5.0,
                        crossAxisSpacing: 5.0,
                      ),
                      itemCount: 4,
                      //TODO: HAVE UPLOADED IMAGES SAVE INTO LIST THEN TAKE LIST LENGTH AND ADD TO ITEMCOUNT,
                      // THEN PUT LIST IMAGES INTO DECORATIONIMAGE BELOW
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/images/rosy.png'), fit: BoxFit.cover),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    margin: const EdgeInsets.symmetric(vertical: 5.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black12),
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: Colors.white,
                    ),
                    child: Row(
                      children: <Widget>[
                        CustomText(
                          text: 'Location',
                          size: 15,
                          bold: true,
                          alignment: TextAlign.start,
                        ),
                        Spacer(),
                        CustomText(
                          text: '~ 20 km away',
                          size: 15,
                          bold: true,
                          color: AppColors.colorPrimaryOrange,
                          alignment: TextAlign.end,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                        //color: Colors.white,
                        borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(15.0),
                    )),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        CustomText(
                          text: time! + amPm!,
                          size: 15,
                          bold: true,
                          alignment: TextAlign.center,
                        ),
                        VerticalDivider(
                          indent: 10,
                          endIndent: 10,
                          thickness: 1,
                        ),
                        CustomText(
                          text: 'Tomorrow, Monday March 22nd, 2021',
                          size: 10,
                          color: Colors.grey,
                          bold: true,
                          alignment: TextAlign.center,
                        ),
                      ],
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
