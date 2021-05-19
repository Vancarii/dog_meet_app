import 'package:dog_meet_app/src/global_components/themes/app_colors.dart';
import 'package:dog_meet_app/src/global_components/widgets/text_styles.dart';
import 'package:dog_meet_app/src/global_components/route_transitions/route_transitions.dart';
import 'package:dog_meet_app/src/provider/provider_notifier.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/profile/account_profile_page.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/profile/settings/sub/account_settings.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/profile/settings/sub/help.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/profile/settings/sub/notifications_settings.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/profile/settings/sub/privacy_settings.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/profile/settings/sub/saved_posts.dart';
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
    final provider = Provider.of<ProviderNotifier>(context, listen: false);

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
                nextScreen: PrivacySettings(),
              ),
              ProfileSettingsTileButton(
                text: 'Manage Account',
                icon: Icons.person_outline_outlined,
                nextScreen: AccountSettings(),
              ),
              ProfileSettingsTileButton(
                text: 'Notifications',
                icon: Icons.notifications_none_outlined,
                nextScreen: NotificationsSettings(),
              ),
              ProfileSettingsTileButton(
                text: 'Saved',
                icon: Icons.bookmark_border_rounded,
                nextScreen: SavedPosts(),
              ),
              ProfileSettingsTileButton(
                text: 'Help',
                icon: Icons.help_outline,
                nextScreen: Help(),
              ),
              ProfileSettingsTileButton(
                text: 'About',
                icon: Icons.info_outline_rounded,
                onTap: () {
                  showAboutDialog(
                    context: context,
                    applicationVersion: '0.0.1',
                    applicationName: 'Dog Meet App',
                  );
                },
              ),
              InkWell(
                onTap: () {
                  provider.toggleTheme(!provider.isDarkMode);
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  child: Row(
                    children: [
                      CustomText(
                        text: 'Dark Mode',
                        size: 15,
                        bold: true,
                      ),
                      Spacer(),
                      CupertinoSwitch(
                        value: themeProvider.isDarkMode,
                        onChanged: (value) {
                          setState(() {
                            provider.toggleTheme(value);
                          });
                        },
                        activeColor: AppColors.colorPrimaryOrange,
                      ),
                    ],
                  ),
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
  final Widget nextScreen;
  final VoidCallback onTap;

  ProfileSettingsTileButton({this.text, this.icon, this.nextScreen, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: nextScreen != null
          ? () {
              Scaffold.of(context).openDrawer();
              Navigator.push(
                  context,
                  RouteTransitions().slideRightToLeftJoinedTransitionType(
                    AccountProfilePage(),
                    nextScreen,
                  ));
            }
          : onTap,
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
