import 'package:flutter/material.dart';

class FabMessageNotifier extends ChangeNotifier {
  bool messageFabClicked = false;

  void changeIsOnMessagesPage() {
    messageFabClicked = !messageFabClicked;
    notifyListeners();
  }
}
