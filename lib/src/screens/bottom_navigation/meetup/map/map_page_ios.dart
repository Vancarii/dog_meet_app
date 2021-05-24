import 'package:animations/animations.dart';
import 'package:dog_meet_app/src/global_components/themes/app_colors.dart';
import 'package:dog_meet_app/src/global_components/widgets/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:dog_meet_app/src/global_components/models/nearby_meets_model.dart';
import 'package:location/location.dart' as LocationManager;

class MapPageIos extends StatefulWidget {
  @override
  _MapPageIosState createState() => _MapPageIosState();
}

class _MapPageIosState extends State<MapPageIos> with SingleTickerProviderStateMixin {
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
      body: GoogleMap(
        zoomControlsEnabled: false,
        myLocationEnabled: true,
        myLocationButtonEnabled: false,
        //markers: Set.from(allMarkers),
        initialCameraPosition: CameraPosition(
          target: LatLng(49.294009, -122.8347733),
          zoom: 12,
        ),
      ),
    );
  }
}
