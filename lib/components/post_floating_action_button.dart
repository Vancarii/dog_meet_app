import 'package:flutter/material.dart';
import 'package:flutter_speed_dial_material_design/flutter_speed_dial_material_design.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget postFloatingActionButton() {
  final icons = [
    SpeedDialAction(child: Icon(Icons.forum)),
    SpeedDialAction(child: Icon(Icons.store)),
    SpeedDialAction(child: Icon(FontAwesomeIcons.paw)),
  ];

  return SpeedDialFloatingActionButton(
    actions: icons,
    // Make sure one of child widget has Key value to have fade transition if widgets are same type.
    childOnFold: Icon(Icons.post_add, key: UniqueKey()),
    childOnUnfold: Icon(Icons.add),
    useRotateAnimation: true,
    onAction: _onSpeedDialAction,
  );
}

_onSpeedDialAction(int selectedActionIndex) {
  print('$selectedActionIndex Selected');
  //TODO: ADD FUNCTIONIONALITY FOR POSTING TO EITHER PAGES WITH SELECTEDACTIONINDEX,
}
