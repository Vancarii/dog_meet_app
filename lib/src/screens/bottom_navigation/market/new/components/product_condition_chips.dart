import 'package:dog_meet_app/src/global_components/components/app_colors.dart';
import 'package:dog_meet_app/src/global_components/components/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

enum conditionType {
  BrandNew,
  UsedLikeNew,
  UsedGood,
  UsedFair,
}

class ProductConditionChips extends StatefulWidget {
  @override
  _ProductConditionChipsState createState() => _ProductConditionChipsState();
}

class _ProductConditionChipsState extends State<ProductConditionChips> {
  conditionType productCondition = conditionType.BrandNew;

  String titleDecider(conditionType condition) {
    if (condition == conditionType.BrandNew) {
      var title = 'Brand New';
      return title;
    } else if (condition == conditionType.UsedLikeNew) {
      var title = 'Used - Like New';
      return title;
    } else if (condition == conditionType.UsedGood) {
      var title = 'Used - Good';
      return title;
    } else {
      var title = 'Used - Fair';
      return title;
    }
  }

  Padding chip(conditionType condition) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: ChoiceChip(
          elevation: 2,
          pressElevation: 0,
          selectedShadowColor: Colors.transparent,
          selectedColor: AppColors.colorPrimaryOrange,
          backgroundColor: AppColors.colorWhite,
          label: CustomText(
            color: productCondition == condition ? AppColors.colorWhite : AppColors.colorBlack,
            text: titleDecider(condition),
          ),
          selected: productCondition == condition ? true : false,
          onSelected: (selected) {
            print(productCondition);
            print(selected);
            if (selected == true) {
              setState(() {
                productCondition = condition;
              });
            }
          }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        chip(conditionType.BrandNew),
        chip(conditionType.UsedLikeNew),
        chip(conditionType.UsedGood),
        chip(conditionType.UsedFair),
      ],
    );
  }
}
