import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_page_indicator/flutter_page_indicator.dart';
import 'package:dog_meet_app/src/screens/global/components/image_swiper/flutter_swiper.dart';

class ProfileCarousel extends StatefulWidget {
  @override
  _ProfileCarouselState createState() => _ProfileCarouselState();
}

class _ProfileCarouselState extends State<ProfileCarousel> {
  static const List<String> images = [
    'assets/images/rosymazeprofile.jpg',
    'assets/images/rosymazeprofile.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(
        Radius.circular(15),
      ),
      child: Container(
        height: 200,
        child: Swiper(
          loop: false,
          index: 0,
          indicatorLayout: PageIndicatorLayout.WARM,
          itemCount: images.length,
          viewportFraction: 0.8,
          scale: 0.9,
          pagination: SwiperPagination(
            builder: DotSwiperPaginationBuilder(
              activeColor: Color(0xfffc816a),
            ),
          ),
          control: SwiperControl(iconPrevious: null, iconNext: null),
          itemBuilder: (context, index) {
            return Image.asset(
              images[index],
              fit: BoxFit.fitHeight,
            );
          },
        ),
      ),
    );
  }
}
