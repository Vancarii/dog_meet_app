import 'package:dog_meet_app/src/global_components/widgets/text_styles.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

import '../themes/app_colors.dart';

class CustomExpandable extends StatefulWidget {
  final String headerText;
  final Widget body;
  final Color borderColor;

  const CustomExpandable({Key key, this.headerText, this.body, this.borderColor}) : super(key: key);

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
                  color: AppColors.colorDarkSlateGrey.withOpacity(0.3),
                  border: Border.all(
                    color: widget.borderColor,
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
                      text: widget.headerText,
                      size: 15,
                      bold: true,
                      padding: const EdgeInsets.all(10.0),
                    ),
                  ),
                  expanded: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: widget.body,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
