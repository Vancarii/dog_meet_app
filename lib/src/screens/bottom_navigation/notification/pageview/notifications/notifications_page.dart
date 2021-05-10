import 'package:dog_meet_app/src/global_components/components/app_colors.dart';
import 'package:dog_meet_app/src/global_components/components/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NotificationsPage extends StatefulWidget {
  final VoidCallback onMessagesPressed;

  NotificationsPage({@required this.onMessagesPressed});

  @override
  _NotificationsPageState createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        centerTitle: true,
        title: CustomText(
          text: 'Notification',
          size: 18,
          bold: true,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              FontAwesomeIcons.paperPlane,
              size: 20,
            ),
            onPressed: widget.onMessagesPressed,
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(2.0),
          child: Container(
            height: 2.0,
            decoration: BoxDecoration(
                gradient:
                    LinearGradient(begin: Alignment.bottomLeft, end: Alignment.topRight, colors: [
              AppColors.colorOrange,
              AppColors.colorPrimaryYellow,
            ])),
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
        children: [
          CustomText(
            text: 'Reminders',
            size: 20,
            bold: true,
            padding: const EdgeInsets.only(bottom: 10.0, left: 20.0),
          ),
          /*Padding(
            padding: const EdgeInsets.only(bottom: 10.0, left: 20.0),
            child: Text(
              'Reminders',
              style: AppTextStyles.h20BlackBold,
            ),
          ),*/
          InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.only(bottom: 2.0),
              child: Container(
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(border: Border.all(color: Colors.black12, width: 1)),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Wrap(
                    //spacing: 10,
                    runSpacing: 10,
                    children: [],
                  ),
                ),
              ),
            ),
          ),
          CustomText(
            text: 'Recent',
            size: 20,
            bold: true,
            padding: const EdgeInsets.only(bottom: 10.0, left: 10.0),
          ),
/*          Padding(
            padding: const EdgeInsets.only(bottom: 10.0, left: 10.0),
            child: Text(
              'Recent',
              style: AppTextStyles.h20BlackBold,
            ),
          ),*/
          InkWell(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.black12, width: 0.5))),
              child: Row(
                children: [
                  CircleAvatar(),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: 'Rosyandmaze',
                          size: 12,
                          bold: true,
                        ),
                        /*Text(
                          'Rosyandmaze',
                          style: AppTextStyles.h12BlackBold,
                        ),*/
                        CustomText(
                          text: 'messaged you about your listing',
                          size: 10,
                          padding: const EdgeInsets.only(top: 2.0),
                        ),
                        /*Padding(
                          padding: const EdgeInsets.only(top: 2.0),
                          child: Text(
                            'messaged you about your listing',
                            style: AppTextStyles.b10GreyReg,
                          ),
                        ),*/
                      ],
                    ),
                  ),
                  Spacer(),
                  CustomText(
                    text: '2 hours ago',
                    size: 10,
                    bold: true,
                    color: Theme.of(context).primaryColorLight.withOpacity(0.8),
                    alignment: TextAlign.center,
                  ),
                  /*Text(
                    '2 hours ago',
                    style: AppTextStyles.h12GreyBold,
                    textAlign: TextAlign.center,
                  ),*/
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Theme.of(context).primaryColorLight.withOpacity(0.8)),
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            )),
                        child: CustomText(
                          text: 'Reply',
                          size: 12,
                          bold: true,
                          alignment: TextAlign.center,
                        ),

                        /*Text(
                          'Reply',
                          style: AppTextStyles.h10GreyBold,
                          textAlign: TextAlign.center,
                        ),*/
                      ),
                    ),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    child: Image.asset(
                      'assets/images/products/trainingtab2.jpg',
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ],
              ),
            ),
          ),
//--------------------------------------
          InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.only(bottom: 2.0),
              child: Container(
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.black12, width: 0.5))),
                padding: EdgeInsets.all(6),
                //decoration: BoxDecoration(border: Border.all(color: Colors.black12, width: 1)),
                child: Row(
                  children: [
                    CircleAvatar(),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            text: 'Rosyandmaze',
                            size: 12,
                            bold: true,
                          ),
                          /*Text(
                            'Rosyandmaze',
                            style: AppTextStyles.h12BlackBold,
                          ),*/
                          CustomText(
                            text: 'started following you',
                            size: 10,
                            bold: false,
                            padding: const EdgeInsets.only(top: 2.0),
                          ),
                          /*Padding(
                            padding: const EdgeInsets.only(top: 2.0),
                            child: Text(
                              'started following you',
                              style: AppTextStyles.b10GreyReg,
                            ),
                          ),*/
                        ],
                      ),
                    ),
                    Spacer(),
                    CustomText(
                      text: '2 hours ago',
                      size: 10,
                      color: Theme.of(context).primaryColorLight.withOpacity(0.8),
                      bold: true,
                      alignment: TextAlign.center,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Theme.of(context).primaryColorLight.withOpacity(0.8)),
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              )),
                          child: CustomText(
                            text: 'Follow Back',
                            size: 12,
                            bold: true,
                            alignment: TextAlign.center,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
