import 'package:dog_meet_app/src/global_components/themes/app_colors.dart';
import 'package:dog_meet_app/src/global_components/widgets/custom_chat_textfield.dart';
import 'package:dog_meet_app/src/global_components/widgets/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'components/meet_up_list_tiles.dart';

class MeetUpDetailsPage extends StatefulWidget {
  @override
  _MeetUpDetailsPageState createState() => _MeetUpDetailsPageState();
}

class _MeetUpDetailsPageState extends State<MeetUpDetailsPage> {
  bool isAttending = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: kBottomNavigationBarHeight + 10.0),
      //margin: const EdgeInsets.only(bottom: 100.0),
      //height: MediaQuery.of(context).size.height,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
        color: Theme.of(context).primaryColor,
      ),
      child: Column(
        /*shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),*/
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 25.0,
              horizontal: 30.0,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  color: AppColors.colorGrey,
                  height: 50.0,
                  width: 2.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: '3:30 pm',
                        size: 20,
                        bold: true,
                      ),
                      CustomText(
                        text: 'Tomorrow, Tuesday April 20th, 2021',
                        color: AppColors.colorGrey,
                        size: 15,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      children: [
                        CustomText(
                          text: 'Location',
                          size: 20,
                          bold: true,
                          padding: const EdgeInsets.only(bottom: 5),
                        ),
                        Spacer(),
                        CustomText(
                          text: 'View in Maps',
                          size: 15,
                          color: Colors.blue,
                          bold: true,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 150,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                  ),
                ],
              )),
          SizedBox(
            height: 10.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MeetUpListTiles(
                leadingIcon: FontAwesomeIcons.globeAmericas,
                iconColor: Theme.of(context).primaryColorLight.withOpacity(0.6),
                title: 'All Breeds',
                description: 'All breeds are welcome!',
              ),
              MeetUpListTiles(
                leadingIcon: FontAwesomeIcons.venus,
                iconColor: Colors.pink,
                title: 'Female',
                description: 'A female only dog Meet Up, sorry boys!',
              ),
              MeetUpListTiles(
                leadingIcon: FontAwesomeIcons.bone,
                iconColor: Theme.of(context).primaryColorLight.withOpacity(0.6),
                title: 'Intact',
                description: 'Either Fixed or Intact dogs can come play!',
              ),
              MeetUpListTiles(
                leadingIcon: FontAwesomeIcons.paw,
                iconColor: Theme.of(context).primaryColorLight.withOpacity(0.6),
                title: 'Medium Size',
                description: '30 - 60 pounds / 15 - 30 kg only please!',
              ),
              MeetUpListTiles(
                leadingIcon: FontAwesomeIcons.users,
                iconColor: Theme.of(context).primaryColorLight.withOpacity(0.6),
                title: '(3) doggos going',
                description: 'The Group Organizer limits 10 dogs to this meet',
              ),
              MeetUpListTiles(
                leadingIcon: FontAwesomeIcons.bolt,
                iconColor: Theme.of(context).primaryColorLight.withOpacity(0.6),
                title: 'Hyper Puppers',
                description: 'This meet is for super hyper zoomies!',
              ),
              MeetUpListTiles(
                leadingIcon: Icons.date_range,
                iconColor: Theme.of(context).primaryColorLight.withOpacity(0.6),
                title: '5 - 10 Months',
                description: 'Puppies only!',
              ),
            ],
          ),
          Divider(
            thickness: 1,
            indent: 20,
            endIndent: 20,
          ),
          CustomText(
            text: 'Comments (1)',
            size: 15,
            bold: true,
            padding: const EdgeInsets.only(top: 5.0),
          ),
          Container(
            width: double.infinity,
            height: 300,
            margin: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0, top: 5.0),
            padding: const EdgeInsets.only(top: 5.0),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColorLight.withOpacity(0.2),
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
            ),
            child: Column(
              children: [
                Expanded(
                  child: ListView(
                    padding: EdgeInsets.all(5.0),
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          CircleAvatar(),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 5.0),
                            padding: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              color: Theme.of(context).primaryColorLight.withOpacity(0.2),
                              borderRadius: BorderRadius.all(
                                Radius.circular(30),
                              ),
                            ),
                            constraints: BoxConstraints(
                              maxWidth: MediaQuery.of(context).size.width / 1.5,
                            ),
                            child: Wrap(
                              children: [
                                CustomText(
                                  text: 'Where is this meet? is it at a field or a dog park?',
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    bottom: 10.0,
                    top: 10.0,
                    left: 10.0,
                  ),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: CustomRoundedTextField(
                              maxLines: null,
                              minLines: 1,
                              borderColor: Theme.of(context).primaryColorLight,
                              padding: const EdgeInsets.only(bottom: 5.0),
                              labelText: 'Add Comment / Ask a Question',
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.send_rounded,
                              color: Theme.of(context).primaryColorLight,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 1.2,
                        child: Wrap(
                          children: [
                            CustomText(
                              text: 'Your comment is public to everyone who views this meet',
                              size: 12,
                              color: Theme.of(context).primaryColorLight.withOpacity(0.6),
                              padding: const EdgeInsets.only(left: 10.0),
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
        ],
      ),
    );
  }
}
