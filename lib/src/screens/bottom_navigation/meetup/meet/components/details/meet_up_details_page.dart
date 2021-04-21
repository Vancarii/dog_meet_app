import 'package:dog_meet_app/src/global_components/components/app_colors.dart';
import 'package:dog_meet_app/src/global_components/components/text_styles.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/bnb/animated_bottom_navigation_bar/src/tab_item.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'components/meet_up_list_tiles.dart';

class MeetUpDetailsPage extends StatefulWidget {
  @override
  _MeetUpDetailsPageState createState() => _MeetUpDetailsPageState();
}

class _MeetUpDetailsPageState extends State<MeetUpDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 60.0),
      //margin: const EdgeInsets.only(bottom: 100.0),
      //height: MediaQuery.of(context).size.height,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(15), bottom: Radius.circular(15)),
        color: AppColors.colorWhite,
      ),
      child: Column(
        /*shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),*/

        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 25.0, bottom: 25.0, left: 30.0),
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
                    height: MediaQuery.of(context).size.width / 2,
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
                iconColor: Colors.black38,
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
                iconColor: Colors.black38,
                title: 'Intact',
                description: 'Either Fixed or Intact dogs can come play!',
              ),
              MeetUpListTiles(
                leadingIcon: FontAwesomeIcons.paw,
                iconColor: Colors.black38,
                title: 'Medium Size',
                description: '30 - 60 pounds / 15 - 30 kg only please!',
              ),
              MeetUpListTiles(
                leadingIcon: FontAwesomeIcons.users,
                iconColor: Colors.black38,
                title: '(3) doggos going',
                description: 'The Group Organizer limits 10 dogs to this meet',
              ),
              MeetUpListTiles(
                leadingIcon: FontAwesomeIcons.bolt,
                iconColor: Colors.black38,
                title: 'Hyper Puppers',
                description: 'This meet is for super hyper zoomies!',
              ),
              MeetUpListTiles(
                leadingIcon: Icons.date_range,
                iconColor: Colors.black38,
                title: '5 - 10 Months',
                description: 'Puppies only!',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
