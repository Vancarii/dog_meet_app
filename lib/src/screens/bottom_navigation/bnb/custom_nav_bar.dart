import 'package:dog_meet_app/src/global_components/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class CustomNavBar extends StatefulWidget {
  final Color backgroundColor;
  final Function(int index) onTap;

  const CustomNavBar({
    Key key,
    this.backgroundColor,
    @required this.onTap,
  }) : super(key: key);

  @override
  _CustomNavBarState createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  int _currentIndex = 1;

  List<IconData> _iconList = <IconData>[
    Icons.forum_outlined,
    Icons.store_outlined,
    FontAwesomeIcons.paw,
    Icons.notifications_outlined,
    FontAwesomeIcons.dog,
  ];

  List<IconData> _iconListTapped = <IconData>[
    Icons.forum,
    Icons.store,
    FontAwesomeIcons.paw,
    Icons.notifications,
    FontAwesomeIcons.dog,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      child: SafeArea(
        maintainBottomViewPadding: true,
        child: Container(
          height: 70,
          child: Column(
            children: [
              //Replace with sliding sheet or something
              Container(
                height: 10,
                color: AppColors.colorPrimaryOrange,
              ),
              Container(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    for (var index = 0; index <= _iconList.length - 1; index++)
                      Expanded(
                        child: Material(
                          child: IconButton(
                            splashRadius: 35,
                            highlightColor: Colors.red,
                            splashColor: Theme.of(context).primaryColorLight,
                            onPressed: () {
                              setState(() {
                                _currentIndex = index;
                                print(_currentIndex);
                                widget.onTap(index);
                              });
                            },
                            icon: Icon(
                              _currentIndex != index
                                  ? _iconList[index]
                                  : _iconListTapped[index],
                              color: _currentIndex == index
                                  ? AppColors.colorPrimaryOrange
                                  : Theme.of(context).primaryColorLight,
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
