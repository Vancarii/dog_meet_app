import 'package:dog_meet_app/src/global_components/components/text_styles.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

import 'app_colors.dart';

class CustomExpandable extends StatefulWidget {
  const CustomExpandable({Key key}) : super(key: key);

  @override
  _CustomExpandableState createState() => _CustomExpandableState();
}

class _CustomExpandableState extends State<CustomExpandable> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: AppColors.colorPrimaryOrange.withOpacity(0.5),
                  border: Border.all(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: ExpandablePanel(
                  theme: const ExpandableThemeData(
                    headerAlignment: ExpandablePanelHeaderAlignment.center,
                    hasIcon: false,
                  ),
                  collapsed: null,
                  header: Align(
                    alignment: Alignment.center,
                    child: CustomText(
                      text: 'Links',
                      size: 15,
                      bold: true,
                      padding: const EdgeInsets.all(10.0),
                    ),
                  ),
                  expanded: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Container(
                          height: 30,
                          margin: const EdgeInsets.only(bottom: 5.0, left: 5.0, right: 5.0),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(10))),
                        ),
                      ],
                    ),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
