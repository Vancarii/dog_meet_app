import 'package:dog_meet_app/src/global_components/components/app_colors.dart';
import 'package:dog_meet_app/src/global_components/components/text_styles.dart';
import 'package:dog_meet_app/src/provider/provider_notifier.dart';
import 'package:dog_meet_app/src/provider/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfileDrawer extends StatefulWidget {
  @override
  _ProfileDrawerState createState() => _ProfileDrawerState();
}

class _ProfileDrawerState extends State<ProfileDrawer> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ProviderNotifier>(context);

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
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Row(
                  children: [
                    CustomText(
                      text: 'Dark Theme',
                      size: 15,
                      bold: true,
                    ),
                    Spacer(),
                    CupertinoSwitch(
                      value: themeProvider.isDarkMode,
                      onChanged: (value) {
                        setState(() {
                          final provider = Provider.of<ProviderNotifier>(context, listen: false);
                          provider.toggleTheme(value);
                        });
                      },
                      activeColor: AppColors.colorPrimaryOrange,
                    ),
                  ],
                ),
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
                //color: AppColors.colorBlack,
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
