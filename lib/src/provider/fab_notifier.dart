import 'package:flutter/material.dart';

class FabNotifier extends ChangeNotifier {
  bool onMessagesPage = false;
  bool onMeetDetailsPage = false;

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
