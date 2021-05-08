import 'package:google_maps_flutter/google_maps_flutter.dart';

class Meet {
  String accountName;
  String address;
  String description;
  //String thumbNail;
  LatLng locationCoordinates;
  String meetTime;

  Meet({
    this.accountName,
    this.address,
    this.description,
    //this.thumbNail,
    this.locationCoordinates,
    this.meetTime,
  });
}

final List<Meet> meetUps = [
  Meet(
    accountName: '@Rosyandmaze',
    address: 'Heritage Mountain Park',
    description: 'Only a baseball field so make sure your dog has good recall',
    locationCoordinates: LatLng(49.294009, -122.8347733),
    meetTime: 'Today, 3:30pm',
  ),
  Meet(
    accountName: '@Aryaofthenorthh',
    address: 'Leigh Off Leash dog Park',
    description: 'Off leash park with water bowl and gravel, very large area to run',
    locationCoordinates: LatLng(49.287942, -122.751642),
    meetTime: 'Tomorrow, 5:50pm',
  ),
  Meet(
    accountName: '@Maggie',
    address: 'Port Moody Off-Leash Dog Park',
    description: 'Off leash park with water bowl',
    locationCoordinates: LatLng(49.279197, -122.845936),
    meetTime: 'Today, 11:00am',
  ),
  Meet(
    accountName: '@Bodhi_miniaussie',
    address: 'Barnet Marine Park',
    description: 'By the ocean so bring a towel!',
    locationCoordinates: LatLng(49.291330, -122.923233),
    meetTime: 'Today, 6:00pm',
  ),
  Meet(
    accountName: '@kirakira_thetoller',
    address: 'Glen off-leash dog park',
    description: 'Very large fenced dog park with a small dog area as well!',
    locationCoordinates: LatLng(49.281760, -122.789722),
    meetTime: 'Today, 4:00pm',
  ),
];
