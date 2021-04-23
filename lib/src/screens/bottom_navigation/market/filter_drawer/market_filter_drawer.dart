import 'package:dog_meet_app/src/global_components/components/app_colors.dart';
import 'package:dog_meet_app/src/global_components/components/text_styles.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/market/filter_drawer/components/color_picker.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/market/filter_drawer/components/market_filter_chip.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/market/filter_drawer/components/market_price_range_slider.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class MarketFilterDrawer extends StatefulWidget {
  @override
  _MarketFilterDrawerState createState() => _MarketFilterDrawerState();
}

class _MarketFilterDrawerState extends State<MarketFilterDrawer> {
  bool productChanged = false;
  bool sliderChanged = false;
  bool colorChanged = false;
  bool resetAll = false;

  @override
  Widget build(BuildContext context) {
    productFunction(value) => setState(() => productChanged = value);
    colorFunction(value) => setState(() => colorChanged = value);
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CustomText(
                  text: 'Product Type',
                  size: 18,
                  bold: true,
                ),
                Visibility(
                  visible: productChanged == true || sliderChanged == true || colorChanged == true
                      ? true
                      : false,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        sliderChanged = false;
                        colorChanged = false;
                        productChanged = false;
                      });
                    },
                    child: CustomText(
                      text: 'Reset All',
                      size: 15,
                      bold: true,
                      color: Colors.blueAccent,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: MarketFilterChip(
                reset: productChanged == false ? true : false,
                productChanged: productFunction,
              ),
            ),
            ExpandableNotifier(
              initialExpanded: true,
              child: ExpandablePanel(
                theme: const ExpandableThemeData(
                  headerAlignment: ExpandablePanelHeaderAlignment.center,
                  tapBodyToCollapse: true,
                ),
                header: CustomText(
                  text: 'Price Range',
                  size: 18,
                  bold: true,
                  color:
                      sliderChanged == true ? AppColors.colorPrimaryOrange : AppColors.colorBlack,
                ),
                expanded: MarketPriceRangeSlider(
                  reset: sliderChanged == false ? true : false,
                  onStart: (values) {
                    setState(() {
                      sliderChanged = true;
                    });
                  },
                  onEnd: (values) {
                    if (values == RangeValues(0, 500)) {
                      setState(() {
                        sliderChanged = false;
                      });
                    }
                  },
                ),
                collapsed: null,
              ),
            ),
            ExpandableNotifier(
              initialExpanded: true,
              child: ExpandablePanel(
                theme: const ExpandableThemeData(
                  headerAlignment: ExpandablePanelHeaderAlignment.center,
                  tapBodyToCollapse: true,
                ),
                header: CustomText(
                  text: 'Color',
                  size: 18,
                  bold: true,
                  color: colorChanged == true ? AppColors.colorPrimaryOrange : AppColors.colorBlack,
                ),
                expanded: ColorPicker(
                  reset: colorChanged == false ? true : false,
                  colorChanged: colorFunction,
                ),
                collapsed: null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
