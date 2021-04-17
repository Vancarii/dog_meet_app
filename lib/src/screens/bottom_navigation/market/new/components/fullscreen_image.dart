import 'package:dog_meet_app/src/global_components/components/app_colors.dart';
import 'package:dog_meet_app/src/global_components/route_transitions/transparent_route.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/market/new/components/add_images_gridview.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/market/new/post_listing_page.dart';
import 'package:flutter/material.dart';

class FullscreenImage extends StatelessWidget {
  final Widget image;
  final int index;

  FullscreenImage({this.image, this.index});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.colorBlack.withOpacity(0.5),
      child: InkWell(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Hero(
            tag: 'listingImage$index',
            child: image,
          ),
        ),
      ),
    );
  }
}
