import 'package:dogmeet_app/screens/forum/forums_feed_page.dart';
import 'package:flutter/material.dart';
import 'package:dogmeet_app/components/ui/text_styles.dart';

bool boolShowAllChips = false;
String moreOrLessText = 'SHOW MORE';
IconData moreOrLessIcon = Icons.expand_more;

class ShowMoreLessButton extends StatefulWidget {
  @override
  _ShowMoreLessButtonState createState() => _ShowMoreLessButtonState();
}

class _ShowMoreLessButtonState extends State<ShowMoreLessButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: RawChip(
        pressElevation: 0,
        elevation: 10,
        backgroundColor: Colors.white,
        label: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            gibsonSemiBoldText('$moreOrLessText', 0, 0, 0, 0, 12, Colors.black,
                TextAlign.center),
            Icon(
              moreOrLessIcon,
            ),
          ],
        ),
        onPressed: () {
          setState(() {
            if (boolShowAllChips == false) {
              boolShowAllChips = true;
              moreOrLessText = 'SHOW LESS';
              moreOrLessIcon = Icons.expand_less;
            } else {
              boolShowAllChips = false;
              moreOrLessText = 'SHOW MORE';
              moreOrLessIcon = Icons.expand_more;
            }
          });
        },
      ),
    );
  }
}
