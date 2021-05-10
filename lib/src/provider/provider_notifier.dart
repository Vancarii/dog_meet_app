import 'package:flutter/material.dart';

class ProviderNotifier extends ChangeNotifier {
  bool onMessagesPage = false;
  bool onMeetDetailsPage = false;

  ThemeMode themeMode = ThemeMode.dark;
  bool get isDarkMode => themeMode == ThemeMode.dark;

  void toggleTheme(bool isDarkTheme) {
    themeMode = isDarkTheme ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }

  void messageFabChanged(bool newValue) {
    onMessagesPage = newValue;
    print(onMessagesPage);
    notifyListeners();
  }

  void meetUpSheetExpanded(bool newValue) {
    onMeetDetailsPage = newValue;
    print(onMeetDetailsPage);
    notifyListeners();
  }
}
