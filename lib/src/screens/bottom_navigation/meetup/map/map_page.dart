import 'package:dog_meet_app/src/global_components/components/app_colors.dart';
import 'package:dog_meet_app/src/global_components/components/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:dog_meet_app/src/global_components/models/nearby_meets_model.dart';
import 'package:location/location.dart' as LocationManager;

class MapPage extends StatefulWidget {
  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  GoogleMapController nearbyMeetMapController;

  List<Marker> allMarkers = [];

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
          infoWindow: InfoWindow(title: element.accountName, snippet: element.meetTime),
          position: element.locationCoordinates,
        ),
      );
    });
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
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                setState(() {
                  goToLocation(zoom: 17.0, location: snapshot.data);
                });
              },
              backgroundColor: AppColors.colorWhite,
              child: Icon(Icons.my_location_rounded),
            ),
            body: snapshot.hasData
                ? SafeArea(
                    child: GoogleMap(
                      onMapCreated: onMapCreated,
                      zoomControlsEnabled: false,
                      myLocationEnabled: true,
                      myLocationButtonEnabled: false,
                      markers: Set.from(allMarkers),
                      initialCameraPosition: CameraPosition(
                        target: snapshot.data,
                        zoom: 11,
                      ),
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
