import 'package:dog_meet_app/src/global_components/components/app_colors.dart';
import 'package:dog_meet_app/src/global_components/components/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:dog_meet_app/src/global_components/models/nearby_meets_model.dart';
import 'package:location/location.dart' as LocationManager;

class MapPageUnused extends StatefulWidget {
  @override
  _MapPageUnusedState createState() => _MapPageUnusedState();
}

class _MapPageUnusedState extends State<MapPageUnused> {
  GoogleMapController nearbyMeetMapController;

  List<Marker> allMarkers = [];
  LatLng userLocation;

  void goToLocation({double zoom = 11.0}) {
    nearbyMeetMapController.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target: userLocation,
          zoom: zoom,
        ),
      ),
    );
    print(userLocation);
  }

  void onMapCreated(controller) async {
    //userLocation = await getUserLocation();
    setState(() {
      nearbyMeetMapController = controller;
      //goToLocation();
    });
  }

  Future<LatLng> getUserLocation() async {
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
    userLocation = getUserLocation() as LatLng;
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
            goToLocation(zoom: 17.0);
          });
        },
        backgroundColor: AppColors.colorWhite,
        child: Icon(Icons.my_location_rounded),
      ),
      body: SafeArea(
        child: GoogleMap(
          onMapCreated: onMapCreated,
          zoomControlsEnabled: false,
          myLocationEnabled: true,
          myLocationButtonEnabled: false,
          markers: Set.from(allMarkers),
          initialCameraPosition: CameraPosition(
            target: userLocation != null ? userLocation : LatLng(0, 0),
            zoom: 11,
          ),
        ),
      ),
    );
  }
}
