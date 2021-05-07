import 'package:dog_meet_app/src/global_components/components/image_swiper/flutter_swiper.dart';
import 'package:flutter/material.dart';

class ProductImageCarousel extends StatefulWidget {
  final String image;
  ProductImageCarousel({@required this.image});
  @override
  _ProductImageCarouselState createState() => _ProductImageCarouselState();
}

class _ProductImageCarouselState extends State<ProductImageCarousel> {
  List<String> images = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    images.add(widget.image);
  }

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
          //flutter_page_indicator stopped working
          //indicatorLayout: PageIndicatorLayout.SLIDE,
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
