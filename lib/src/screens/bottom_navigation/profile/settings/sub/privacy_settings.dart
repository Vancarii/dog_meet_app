import 'package:dog_meet_app/src/global_components/widgets/text_styles.dart';
import 'package:flutter/material.dart';

class PrivacySettings extends StatelessWidget {
  const PrivacySettings({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        centerTitle: false,
        title: CustomText(
          text: 'Privacy Settings',
          bold: true,
          size: 18,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            CustomText(
              text: 'Meet Up',
              size: 15,
              bold: true,
              color: Theme.of(context).accentColor,
              padding: const EdgeInsets.all(10.0),
            ),
            ListTile(
              title: CustomText(
                text: 'Who can see',
                size: 15,
              ),
              trailing: CustomText(
                text: 'Everyone',
                size: 15,
                color: Theme.of(context).primaryColorLight.withOpacity(0.5),
              ),
            ),
            ListTile(
              title: CustomText(
                text: 'Share',
                size: 15,
              ),
              trailing: CustomText(
                text: 'Everyone',
                size: 15,
                color: Theme.of(context).primaryColorLight.withOpacity(0.5),
              ),
            ),
            CustomText(
              text: 'Forums',
              size: 15,
              bold: true,
              color: Theme.of(context).accentColor,
              padding: const EdgeInsets.all(10.0),
            ),
            ListTile(
              title: CustomText(
                text: 'Comment',
                size: 15,
              ),
              trailing: CustomText(
                text: 'Everyone',
                size: 15,
                color: Theme.of(context).primaryColorLight.withOpacity(0.5),
              ),
            ),
            ListTile(
              title: CustomText(
                text: 'Like',
                size: 15,
              ),
              trailing: CustomText(
                text: 'Everyone',
                size: 15,
                color: Theme.of(context).primaryColorLight.withOpacity(0.5),
              ),
            ),
            ListTile(
              title: CustomText(
                text: 'Share',
                size: 15,
              ),
              trailing: CustomText(
                text: 'Everyone',
                size: 15,
                color: Theme.of(context).primaryColorLight.withOpacity(0.5),
              ),
            ),
            CustomText(
              text: 'Market',
              size: 15,
              bold: true,
              color: Theme.of(context).accentColor,
              padding: const EdgeInsets.all(10.0),
            ),
            ListTile(
              title: CustomText(
                text: 'Save',
                size: 15,
              ),
              trailing: CustomText(
                text: 'Everyone',
                size: 15,
                color: Theme.of(context).primaryColorLight.withOpacity(0.5),
              ),
            ),
            ListTile(
              title: CustomText(
                text: 'Share',
                size: 15,
              ),
              trailing: CustomText(
                text: 'Everyone',
                size: 15,
                color: Theme.of(context).primaryColorLight.withOpacity(0.5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
