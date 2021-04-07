import 'package:flutter/material.dart';

class FabMessageNotifier extends ChangeNotifier {
  bool messageFabClicked = false;
  bool notificationTabClicked = true;

  void messageFabChanged(bool newValue) {
    messageFabClicked = newValue;
    print(messageFabClicked);
    notifyListeners();
  }
}
