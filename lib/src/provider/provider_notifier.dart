import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProviderNotifier extends ChangeNotifier {
  ProviderNotifier() {
    _getTheme();
    notifyListeners();
  }

  ////////////////////////////////FAB//////////////////////////////////////

  bool onMessagesPage = false;
  bool onNewMessagePressed = false;
  //bool onMeetDetailsPage = false;

  void messageFabChanged(bool newValue) {
    onMessagesPage = newValue;
    if (newValue == false) {
      onNewMessagePressed = false;
    }
    print('OnMessagesPage' + onMessagesPage.toString());
    notifyListeners();
  }

  void newMessageButtonPressed(bool tapped) {
    onNewMessagePressed = tapped;
    print('OnNewMessagePressed: ' + onNewMessagePressed.toString());
    notifyListeners();
  }

/*  void meetUpSheetExpanded(bool newValue) {
    onMeetDetailsPage = newValue;
    print(onMeetDetailsPage);
    notifyListeners();
  }*/

////////////////////////////////////////THEME////////////////////////////

  final String themeKey = 'theme_key';
  SharedPreferences _themePref;
  ThemeMode themeMode = ThemeMode.light;
  bool get isDarkMode => themeMode == ThemeMode.dark;

  _initPreferences() async {
    if (_themePref == null) {
      _themePref = await SharedPreferences.getInstance();
    }
  }

  void saveTheme() async {
    await _initPreferences();
    _themePref.setBool(themeKey, isDarkMode);
  }

  _getTheme() async {
    await _initPreferences();
    bool dark = _themePref.getBool(themeKey) ?? true;
    dark == true ? themeMode = ThemeMode.dark : themeMode = ThemeMode.light;
    notifyListeners();
  }

  void toggleTheme(bool isDarkTheme) {
    themeMode = isDarkTheme ? ThemeMode.dark : ThemeMode.light;
    saveTheme();
    notifyListeners();
  }
}
