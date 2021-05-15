import 'package:dog_meet_app/src/global_components/widgets/text_styles.dart';
import 'package:flutter/material.dart';

class NotificationsSettings extends StatelessWidget {
  const NotificationsSettings({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        centerTitle: false,
        title: CustomText(
          text: 'Notifications Settings',
          bold: true,
          size: 18,
        ),
      ),
    );
  }
}
