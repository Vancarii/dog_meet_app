import 'package:dog_meet_app/src/global_components/components/app_colors.dart';
import 'package:dog_meet_app/src/global_components/components/market_tags/lib/tag_editor.dart';
import 'package:flutter/material.dart';

class MarketTags extends StatefulWidget {
  @override
  _MarketTagsState createState() => _MarketTagsState();
}

class _MarketTagsState extends State<MarketTags> {
  List<String> _values = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10.0),
      width: double.infinity,
      //height: 100,
      margin: const EdgeInsets.symmetric(vertical: 5.0),
      decoration: BoxDecoration(
        //color: AppColors.colorGrey.withOpacity(0.5),
        border: Border.all(color: AppColors.colorGrey.withOpacity(0.5)),
        borderRadius: BorderRadius.all(
          Radius.circular(15.0),
        ),
      ),
      child: TagEditor(
        length: _values.length,
        //this is what value it looks for to add the text as a tag
        delimiters: [' '],
        hasAddButton: false,
        resetTextOnSubmitted: true,
        //keyboardType: TextInputType.multiline,
        onSubmitted: (outstandingValue) {
          print('onsubmit');
          setState(() {
            //this if statement is so that if the input is nothing, it wont add it
            if (outstandingValue != '') {
              _values.add(outstandingValue);
            }
          });
        },
        inputDecoration: const InputDecoration(
            border: InputBorder.none,
            hintText: 'Add Tags...',
            hintStyle: TextStyle(
              fontFamily: 'Gibson',
              color: AppColors.colorGrey,
            )),
        onTagChanged: (newValue) {
          setState(() {
            _values.add(newValue);
          });
        },
        tagBuilder: (context, index) => _Chip(
          index: index,
          label: _values[index],
          onDeleted: (index) {
            setState(() {
              _values.removeAt(index);
            });
          },
        ),
      ),
    );
  }
}

class _Chip extends StatelessWidget {
  const _Chip({
    @required this.label,
    @required this.onDeleted,
    @required this.index,
  });

  final String label;
  final ValueChanged<int> onDeleted;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Chip(
      labelPadding: const EdgeInsets.only(left: 8.0),
      label: Text(label),
      deleteIcon: const Icon(
        Icons.close,
        size: 18,
      ),
      onDeleted: () {
        onDeleted(index);
      },
    );
  }
}
