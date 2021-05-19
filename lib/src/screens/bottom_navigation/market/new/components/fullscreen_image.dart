import 'package:dog_meet_app/src/global_components/themes/app_colors.dart';
import 'package:flutter/material.dart';

class FullscreenImage extends StatelessWidget {
  final Widget image;
  final String heroTag;

  FullscreenImage({@required this.image, @required this.heroTag});

  @override
  Widget build(BuildContext context) {
    return InteractiveViewer(
      child: Material(
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
              tag: heroTag,
              child: image,
            ),
          ),
        ),
      ),
    );
  }
}
