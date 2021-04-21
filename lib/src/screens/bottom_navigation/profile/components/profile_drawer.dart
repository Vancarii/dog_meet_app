import 'package:dog_meet_app/src/global_components/components/app_colors.dart';
import 'package:dog_meet_app/src/global_components/components/text_styles.dart';
import 'package:flutter/material.dart';

class ProfileDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: 'Settings',
                size: 26,
                bold: true,
                padding: const EdgeInsets.only(bottom: 10.0),
              ),
              ProfileSettingsTileButton(
                text: 'Privacy',
                icon: Icons.lock_outline_rounded,
              ),
              ProfileSettingsTileButton(
                text: 'Manage Account',
                icon: Icons.person_outline_outlined,
              ),
              ProfileSettingsTileButton(
                text: 'Notifications',
                icon: Icons.notifications_none_outlined,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileSettingsTileButton extends StatelessWidget {
  final String text;
  final IconData icon;

  ProfileSettingsTileButton({this.text, this.icon});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Icon(
                icon,
                color: AppColors.colorBlack,
              ),
            ),
            CustomText(
              text: text,
              size: 16,
            ),
          ],
        ),
      ),
    );
  }
}
