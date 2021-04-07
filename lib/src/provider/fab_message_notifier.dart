import 'package:flutter/material.dart';

class FabMessageNotifier extends ChangeNotifier {
  bool onMessagesPage = false;

  void messageFabChanged(bool newValue) {
    onMessagesPage = newValue;
    print(onMessagesPage);
    notifyListeners();
  }
}
