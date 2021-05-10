import 'package:dog_meet_app/src/global_components/components/app_colors.dart';
import 'package:dog_meet_app/src/global_components/components/custom_chat_textfield.dart';
import 'package:flutter/material.dart';

class SearchBarScreen extends StatefulWidget {
  static const String id = 'search_bar_screen';

  @override
  _SearchBarScreenState createState() => _SearchBarScreenState();
}

class _SearchBarScreenState extends State<SearchBarScreen> {
  bool canClear = false;

  TextEditingController _searchTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10.0,
            vertical: 10.0,
          ),
          child: Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back),
              ),
              Expanded(
                child: CustomRoundedTextField(
                  keyboard: TextInputType.text,
                  controller: _searchTextController,
                  maxLines: 1,
                  borderColor: Theme.of(context).primaryColor,
                  padding: const EdgeInsets.all(0.0),
                  labelText: 'Search',
                  onTextChanged: (value) {
                    setState(() {
                      if (value == '') {
                        canClear = false;
                      } else {
                        canClear = true;
                      }
                    });
                  },
                  endIcon: canClear == true
                      ? IconButton(
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onPressed: () {
                            setState(() {
                              _searchTextController.clear();
                              canClear = false;
                            });
                          },
                          icon: Icon(
                            Icons.cancel,
                            color: AppColors.colorGrey,
                          ),
                        )
                      : null,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
