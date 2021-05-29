import 'package:dog_meet_app/src/global_components/themes/app_colors.dart';
import 'package:dog_meet_app/src/global_components/widgets/text_styles.dart';
import 'package:dog_meet_app/src/global_components/route_transitions/route_transitions.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/market/body/store/market_store_details_page.dart';
import 'package:flutter/material.dart';

class StoreTile extends StatelessWidget {
  final String image;
  final String storeName;
  const StoreTile({Key key, this.image, this.storeName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            RouteTransitions().slideRightToLeftTransitionType(
              MarketStoreDetailsPage(
                storeImage: image,
                storeName: storeName,
              ),
            ),
          );
        },
        child: Container(
          alignment: Alignment.bottomLeft,
          margin: const EdgeInsets.all(5.0),
          decoration: BoxDecoration(
            //color: AppColors.colorPrimaryOrange,
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
            image: DecorationImage(
              image: AssetImage(
                image,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            //alignment: Alignment.center,
            decoration: BoxDecoration(
              color: AppColors.colorBlack.withOpacity(0.5),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10.0),
                topRight: Radius.circular(10.0),
                bottomRight: Radius.circular(10.0),
              ),
            ),
            child: CustomText(
              text: storeName,
              size: 12,
              color: AppColors.colorWhite,
              bold: true,
              padding: const EdgeInsets.all(5.0),
            ),
          ),
        ),
      ),
    );
  }
}
