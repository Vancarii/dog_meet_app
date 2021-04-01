import 'package:flutter/material.dart';
import 'package:dog_meet_app/src/screens/global/components/flutter_page_indicator.dart';
import 'package:dog_meet_app/src/screens/global/components/image_swiper/flutter_swiper.dart';

class ProductImageCarousel extends StatefulWidget {
  @override
  _ProductImageCarouselState createState() => _ProductImageCarouselState();
}

class _ProductImageCarouselState extends State<ProductImageCarousel> {
  static const List<String> images = [
    'assets/images/trainingtab2.jpg',
    'assets/images/trainingtab2.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(
        Radius.circular(15),
      ),
      child: Container(
        height: 400,
        child: Swiper(
          loop: false,
          index: 0,
          indicatorLayout: PageIndicatorLayout.WARM,
          itemCount: images.length,
          pagination: SwiperPagination(
            builder: DotSwiperPaginationBuilder(
              activeColor: Color(0xfffc816a),
            ),
          ),
          control: SwiperControl(),
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
