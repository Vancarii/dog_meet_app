import 'package:dog_meet_app/src/global_components/components/app_colors.dart';
import 'package:dog_meet_app/src/global_components/components/text_styles.dart';
import 'package:flutter/material.dart';

class MarketFilterChip extends StatefulWidget {
  final Function productChanged;
  final bool reset;

  MarketFilterChip({this.productChanged, this.reset});

  @override
  _MarketFilterChipState createState() => _MarketFilterChipState();
}

class _MarketFilterChipState extends State<MarketFilterChip> {
  final List<String> _productTypes = [
    'Collars',
    'Harnesses',
    'leashes',
    'Toys',
    'Coats',
    'Bandannas',
    'Grooming Tools',
    'Chew Toys',
    'Treats',
    'Hiking Gear',
    'Beds',
    'Crates',
    'Muzzles',
  ];

  int selectedProduct;
  bool boolSelected;

  @override
  Widget build(BuildContext context) {
    if (widget.reset == true) {
      //boolSelected = null;
      selectedProduct = null;
    }
    return Wrap(
      spacing: 10.0,
      children: [
        for (var index = 0; index < _productTypes.length; index++)
          FilterChip(
            showCheckmark: false,
            elevation: 4,
            pressElevation: 0,
            selectedShadowColor: Colors.transparent,
            backgroundColor: AppColors.colorWhite,
            selected: selectedProduct == index ? boolSelected : false,
            selectedColor: AppColors.colorPrimaryOrange,
            label: CustomText(
              text: _productTypes[index],
              size: 15,
              color: AppColors.colorBlack,
            ),
            onSelected: (selected) {
              setState(() {
                if (selectedProduct != index) {
                  selectedProduct = index;
                  widget.productChanged(true);
                } else {
                  selectedProduct = null;
                  widget.productChanged(false);
                }
                boolSelected = selected;
                //selectedProduct != index ? selectedProduct = index : selectedProduct = null;
              });
            },
          ),
      ],
    );
  }
}
