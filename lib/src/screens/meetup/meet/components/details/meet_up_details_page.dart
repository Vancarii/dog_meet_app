import 'package:dog_meet_app/src/screens/global/components/text_styles.dart';
import 'package:dog_meet_app/src/screens/meetup/meet/components/details/components/meet_up_list_tiles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MeetUpDetailsPage extends StatefulWidget {
  @override
  _MeetUpDetailsPageState createState() => _MeetUpDetailsPageState();
}

class _MeetUpDetailsPageState extends State<MeetUpDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      child: ListView(
        //padding: const EdgeInsets.all(10),
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: <Widget>[
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                children: [
                  GridView.builder(
                    padding: const EdgeInsets.only(bottom: 15),
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      childAspectRatio: 1.0,
                      mainAxisSpacing: 10.0,
                      crossAxisSpacing: 10.0,
                    ),
                    itemCount: 4,
                    //TODO: HAVE UPLOADED IMAGES SAVE INTO LIST THEN TAKE LIST LENGTH AND ADD TO ITEMCOUNT
                    itemBuilder: (context, index) {
                      return InkWell(
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/images/rosy.png'), fit: BoxFit.cover),
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                        ),
                      );
                    },
                  ),
                  Row(
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
          Container(
            padding: const EdgeInsets.all(15.0),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(50), bottomRight: Radius.circular(50)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  spreadRadius: 2,
                  blurRadius: 2,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
