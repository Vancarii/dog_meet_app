import 'package:dog_meet_app/src/global_components/components/text_styles.dart';
import 'package:flutter/material.dart';

class ProfileViewMeetUp extends StatelessWidget {
  static const String id = 'profile_view_meet_up';
  const ProfileViewMeetUp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      child: ListView(
        padding: const EdgeInsets.all(10),
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: <Widget>[
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
      ),
    );
  }
}
