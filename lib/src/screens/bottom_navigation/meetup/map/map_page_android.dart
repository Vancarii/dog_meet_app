import 'package:animations/animations.dart';
import 'package:dog_meet_app/src/global_components/themes/app_colors.dart';
import 'package:dog_meet_app/src/global_components/widgets/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:dog_meet_app/src/global_components/models/nearby_meets_model.dart';
import 'package:location/location.dart' as LocationManager;

class MapPageAndroid extends StatefulWidget {
  @override
  _MapPageAndroidState createState() => _MapPageAndroidState();
}

class _MapPageAndroidState extends State<MapPageAndroid> with SingleTickerProviderStateMixin {
  GoogleMapController nearbyMeetMapController;

  PageController pageController;

  int prevPage;

  bool pageScrolled = false;

  List<Marker> allMarkers = [];

  LatLng currentCoordinates;

  void goToLocation({double zoom = 11.0, LatLng location}) {
    nearbyMeetMapController.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target: location,
          zoom: zoom,
        ),
      ),
    );
  }

  void onMapCreated(controller) async {
    nearbyMeetMapController = controller;
  }

  Future<LatLng> getUserLocation() async {
    //print('step 2');
    LocationManager.LocationData currentLocation;
    final location = LocationManager.Location();
    try {
      currentLocation = await location.getLocation();
      final lat = currentLocation.latitude;
      final lng = currentLocation.longitude;
      final center = LatLng(lat, lng);
      return center;
    } on Exception {
      currentLocation = null;
      return null;
    }
  }

  @override
  void initState() {
    super.initState();
    meetUps.forEach((element) {
      allMarkers.add(
        Marker(
          markerId: MarkerId(element.accountName),
          draggable: false,
          infoWindow: InfoWindow(title: element.meetTime, snippet: element.date),
          position: element.locationCoordinates,
        ),
      );
    });
    pageController = PageController(initialPage: 1, viewportFraction: 0.9)..addListener(_onScroll);

    animationController = AnimationController(
      duration: const Duration(milliseconds: 250),
      vsync: this,
    );

    offsetAnimation = Tween<Offset>(
      begin: Offset(0.0, 3.0),
      end: const Offset(0.0, 1.5),
    ).animate(CurvedAnimation(
      parent: animationController,
      curve: Curves.easeInOutSine,
    ));
  }

  Animation<Offset> offsetAnimation;

  AnimationController animationController;

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
    nearbyMeetMapController.dispose();
    animationController.dispose();
  }

  void _onScroll() {
    if (pageController.page.toInt() != prevPage) {
      setState(() {
        prevPage = pageController.page.toInt();
        pageScrolled = true;
        print('page: ' + pageController.page.toInt().toString());
        moveCamera();
      });
    }
  }

  moveCamera() {
    nearbyMeetMapController.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
        target: meetUps[pageController.page.toInt()].locationCoordinates,
        zoom: 14.0,
        //bearing: 45.0,
        tilt: 45.0)));
    nearbyMeetMapController
        .showMarkerInfoWindow(MarkerId(meetUps[pageController.page.toInt()].accountName));
  }

  hideCards() {
    setState(() {
      if (pageScrolled == false) {
        if (animationController.isCompleted) {
          animationController.reverse();
          //pageScrolled = true;
        }
      }
    });
  }

  meetUpsList(index) {
    return OpenContainer(
      closedColor: Colors.transparent,
      transitionDuration: Duration(milliseconds: 500),
      closedElevation: 0,
      openElevation: 0,
      openColor: Colors.transparent,
      openBuilder: (context, action) {
        return Padding(
          padding: const EdgeInsets.only(top: 100),
          child: GestureDetector(
            onVerticalDragUpdate: (details) {
              //hideCards();
              Navigator.pop(context);
            },
            //onTap: () {},
            child: Stack(
              children: [
                Center(
                  child: Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 10.0,
                      vertical: 10.0,
                    ),
                    height: 1000.0,
                    width: 600.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black54,
                          offset: Offset(0.0, 4.0),
                          blurRadius: 10.0,
                        ),
                      ],
                      color: Theme.of(context).primaryColor,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.vertical(top: Radius.circular(10.0)),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                      meetUps[index].image,
                                    )),
                              ),
                              width: double.infinity,
                              height: 100,
                            ),
                            Container(
                              margin: const EdgeInsets.all(5.0),
                              padding: const EdgeInsets.only(
                                  top: 5.0, bottom: 5.0, left: 5.0, right: 10.0),
                              decoration: BoxDecoration(
                                  color: AppColors.colorBlack.withOpacity(0.5),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(15.0),
                                  )),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CircleAvatar(
                                    radius: 12,
                                  ),
                                  CustomText(
                                    text: meetUps[index].accountName,
                                    size: 15,
                                    color: AppColors.colorWhite,
                                    padding: const EdgeInsets.only(left: 5.0),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(
                              top: 15.0,
                              left: 10.0,
                              right: 10.0,
                              bottom: 15.0,
                            ),
                            child: Column(
                              /*physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true, */
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomText(
                                      text: meetUps[index].locationName,
                                      size: 20,
                                      bold: true,
                                      //padding: const EdgeInsets.only(top: 10.0, left: 10.0),
                                    ),
                                    CustomText(
                                      text: meetUps[index].address,
                                      size: 13,
                                      padding: const EdgeInsets.only(top: 10.0),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                CustomText(
                                  text: meetUps[index].description,
                                  size: 12,
                                  color: AppColors.colorGrey,
                                  padding: const EdgeInsets.only(top: 5.0),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Container(
                                margin: const EdgeInsets.only(left: 10.0, bottom: 10.0),
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(30.0),
                                  ),
                                  color: AppColors.colorPrimaryOrange,
                                ),
                                child: CustomText(
                                  text: 'Open in Maps',
                                  size: 15,
                                  color: AppColors.colorWhite,
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                margin: const EdgeInsets.only(left: 10.0, bottom: 10.0),
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(30.0),
                                  ),
                                  color: AppColors.colorPrimaryOrange,
                                ),
                                child: CustomText(
                                  text: 'Open in Maps',
                                  size: 15,
                                  color: AppColors.colorWhite,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
      closedBuilder: (context, action) {
        return AnimatedBuilder(
          animation: pageController,
          builder: (BuildContext context, Widget widget) {
            double value = 1;
            if (pageController.position.haveDimensions) {
              value = pageController.page - index;
              value = (1 - (value.abs() * 0.3) + 0.06).clamp(0.0, 1.0);
            }
            return Center(
              child: SizedBox(
                height: Curves.easeInOut.transform(value) * 500.0,
                width: Curves.easeInOut.transform(value) * 600.0,
                child: widget,
              ),
            );
          },
          child: GestureDetector(
            onVerticalDragUpdate: (details) {
              int sens = 5;
              if (details.delta.dy > sens) {
                //down
                hideCards();
              } else if (details.delta.dy < -sens) {
                //up
              }
            },
            //onTap: () {
            /*Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MapCardMeetDetailsPage(
                    heroTag: 'meet_up_map_card_$index',
                  ),
                ),
              );*/
            // },
            child: Stack(
              children: [
                Center(
                  child: Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 10.0,
                      vertical: 10.0,
                    ),
                    height: 700.0,
                    width: 600.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black54,
                          offset: Offset(0.0, 4.0),
                          blurRadius: 10.0,
                        ),
                      ],
                      color: Theme.of(context).primaryColor,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.vertical(top: Radius.circular(10.0)),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                      meetUps[index].image,
                                    )),
                              ),
                              width: double.infinity,
                              height: 100,
                            ),
                            Container(
                              margin: const EdgeInsets.all(5.0),
                              padding: const EdgeInsets.only(
                                  top: 5.0, bottom: 5.0, left: 5.0, right: 10.0),
                              decoration: BoxDecoration(
                                  color: AppColors.colorBlack.withOpacity(0.5),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(15.0),
                                  )),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CircleAvatar(
                                    radius: 12,
                                  ),
                                  CustomText(
                                    text: meetUps[index].accountName,
                                    size: 15,
                                    color: AppColors.colorWhite,
                                    padding: const EdgeInsets.only(left: 5.0),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(
                              top: 15.0,
                              left: 10.0,
                              right: 10.0,
                              bottom: 15.0,
                            ),
                            child: Column(
                              /*physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true, */
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomText(
                                      text: meetUps[index].locationName,
                                      size: 20,
                                      bold: true,
                                      //padding: const EdgeInsets.only(top: 10.0, left: 10.0),
                                    ),
                                    CustomText(
                                      text: meetUps[index].address,
                                      size: 13,
                                      padding: const EdgeInsets.only(top: 10.0),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                CustomText(
                                  text: meetUps[index].description,
                                  size: 12,
                                  color: AppColors.colorGrey,
                                  padding: const EdgeInsets.only(top: 5.0),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Container(
                                margin: const EdgeInsets.only(left: 10.0, bottom: 10.0),
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(30.0),
                                  ),
                                  color: AppColors.colorPrimaryOrange,
                                ),
                                child: CustomText(
                                  text: 'Open in Maps',
                                  size: 15,
                                  color: AppColors.colorWhite,
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                margin: const EdgeInsets.only(left: 10.0, bottom: 10.0),
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(30.0),
                                  ),
                                  color: AppColors.colorPrimaryOrange,
                                ),
                                child: CustomText(
                                  text: 'Open in Maps',
                                  size: 15,
                                  color: AppColors.colorWhite,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getUserLocation(),
        builder: (context, snapshot) {
          return Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              centerTitle: false,
              //titleSpacing: 0,
              title: CustomText(
                text: 'Map',
                size: 22,
                bold: true,
              ),
              actions: [
                IconButton(
                    icon: Icon(Icons.arrow_forward),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
              ],
            ),
            floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
            floatingActionButton: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 150.0,
                ),
                FloatingActionButton(
                  heroTag: null,
                  //mini: true,
                  onPressed: () {
                    setState(() {
                      goToLocation(zoom: 17.0, location: snapshot.data);
                    });
                  },
                  backgroundColor: Theme.of(context).primaryColor,
                  child: Icon(
                    Icons.my_location_rounded,
                    color: Theme.of(context).primaryColorLight,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                FloatingActionButton(
                  heroTag: null,
                  //mini: true,
                  onPressed: () {
                    setState(() {
                      goToLocation(zoom: 15.0, location: snapshot.data);
                    });
                  },
                  backgroundColor: Theme.of(context).primaryColor,
                  child: Icon(
                    Icons.date_range,
                    color: Theme.of(context).primaryColorLight,
                  ),
                ),
              ],
            ),
            body: snapshot.hasData
                ? SafeArea(
                    child: Stack(
                      children: [
                        GoogleMap(
                          onCameraMove: (camPos) {
                            setState(() {
                              currentCoordinates = camPos.target;
                              //print('campos: ' + camPos.target.toString());
                            });
                          },
                          onCameraIdle: () {
                            //print('current Coordinates: ' + currentCoordinates.toString());
                            setState(() {
                              for (var index = 0; index <= meetUps.length - 1; index++) {
                                //print('meetUps index coor: ' +
                                //   meetUps[index].locationCoordinates.toString());

                                if (currentCoordinates != null) {
                                  if ((currentCoordinates.latitude -
                                              meetUps[index].locationCoordinates.latitude)
                                          .abs() <=
                                      0.0002) {
                                    if ((currentCoordinates.longitude -
                                                meetUps[index].locationCoordinates.longitude)
                                            .abs() <=
                                        0.0002) {
                                      animationController.forward();
                                      pageController.animateToPage(index,
                                          duration: Duration(milliseconds: 150),
                                          curve: Curves.easeInOut);
                                      pageScrolled = false;
                                    }
                                  }
                                }
                              }
                            });
                          },
                          onTap: (latLng) {
                            hideCards();
                          },
                          onCameraMoveStarted: () {
                            hideCards();
                          },
                          onMapCreated: onMapCreated,
                          zoomControlsEnabled: false,
                          myLocationEnabled: true,
                          myLocationButtonEnabled: false,
                          markers: Set.from(allMarkers),
                          initialCameraPosition: CameraPosition(
                            target: snapshot.data,
                            zoom: 12,
                          ),
                        ),
                        SlideTransition(
                          position: offsetAnimation,
                          child: Container(
                            height: 300.0,
                            width: MediaQuery.of(context).size.width,
                            child: PageView.builder(
                              controller: pageController,
                              itemCount: meetUps.length,
                              itemBuilder: (BuildContext context, int index) {
                                return meetUpsList(index);
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                : Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CircularProgressIndicator(
                          backgroundColor: AppColors.colorWhite,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CustomText(
                              text: 'FETCHING',
                              bold: true,
                              size: 20,
                              padding: const EdgeInsets.only(top: 20.0),
                            ),
                            CustomText(
                              text: 'your location',
                              bold: false,
                              size: 20,
                              padding: const EdgeInsets.only(left: 5.0, top: 20.0),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
          );
        });
  }
}
