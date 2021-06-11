import 'package:dog_meet_app/src/core/auth/intro/intro_pages/intro_pages.dart';
import 'package:dog_meet_app/src/global_components/themes/app_colors.dart';
import 'package:dog_meet_app/src/global_components/widgets/text_styles.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';

class IntroScreen extends StatefulWidget {
  static const String id = 'intro_screen';

  const IntroScreen({Key key}) : super(key: key);

  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  //final introKey = GlobalKey<IntroductionScreenState>();
  PageController _introPageViewController = PageController(
    initialPage: 0,
  );

  List<Widget> introPagesList = [
    Intro1(),
    Intro2(),
    Intro3(),
    Intro4(),
    Intro5(),
  ];

  double currentIntroPageIndex = 0;

  bool _onScroll(ScrollNotification notification) {
    final metrics = notification.metrics;
    if (metrics is PageMetrics && metrics.page != null) {
      if (mounted) {
        setState(() => currentIntroPageIndex = metrics.page);
      }
    }
    return false;
  }

  @override
  void dispose() {
    super.dispose();
    _introPageViewController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        brightness: Brightness.light,
        toolbarHeight: 0,
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: AppColors.orangeYellowBLTRGradient,
            ),
          ),
          NotificationListener<ScrollNotification>(
            onNotification: _onScroll,
            child: PageView(
              controller: _introPageViewController,
              onPageChanged: (page) {
                setState(() {
                  currentIntroPageIndex = page.toDouble();
                });
              },
              children: introPagesList,
            ),
          ),
          SafeArea(
            child: Align(
              alignment: Alignment.topLeft,
              child: Container(
                padding: const EdgeInsets.all(20.0),
                child: Hero(
                  tag: 'intro_title_tag',
                  child: CustomText(
                    text: 'DOGGOD',
                    size: 22,
                    bold: true,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: Container(
        margin: const EdgeInsets.all(20.0),
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.all(
            Radius.circular(30.0),
          ),
        ),
        child: DotsIndicator(
          dotsCount: introPagesList.length,
          position: currentIntroPageIndex,
          decorator: DotsDecorator(
            color: Colors.black12,
            activeColor: AppColors.colorDarkSlateGrey,
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
          ),
        ),
      ),
    );
  }
}
