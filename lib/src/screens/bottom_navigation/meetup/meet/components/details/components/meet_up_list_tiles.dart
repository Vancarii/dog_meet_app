import 'package:dog_meet_app/src/global_components/widgets/text_styles.dart';
import 'package:flutter/material.dart';

class MeetUpListTiles extends StatelessWidget {
  final IconData leadingIcon;
  final Color iconColor;
  final String title;
  final String description;

  const MeetUpListTiles(
      {Key key, this.leadingIcon, this.iconColor, this.title, this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Icon(
            leadingIcon,
            color: iconColor,
          )),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            text: title,
            size: 18,
            bold: true,
            color: Theme.of(context).primaryColorLight,
          ),
          CustomText(
            text: description,
            size: 12,
            bold: false,
            color: Theme.of(context).primaryColorLight,
          ),
        ],
      ),
    );
  }
}
