import 'package:google_maps_flutter/google_maps_flutter.dart';

class Meet {
  String accountName;
  String locationName;
  String address;
  String description;
  String image;
  LatLng locationCoordinates;
  String meetTime;
  String date;

  Meet({
    this.accountName,
    this.address,
    this.description,
    this.image,
    this.locationCoordinates,
    this.meetTime,
    this.date,
    this.locationName,
  });
}

final List<Meet> meetUps = [
  Meet(
    accountName: 'Rosyandmaze',
    locationName: 'Heritage Mountain Park',
    address: '125 Ravine Dr, Port Moody BC V3H 4Z1, Canada',
    description: 'Only a baseball field so make sure your dog has good recall',
    locationCoordinates: LatLng(49.294009, -122.8347733),
    meetTime: '3:30pm',
    date: 'Today, Saturday May 8th, 2021',
    image: 'https://i.pinimg.com/originals/07/b2/0e/07b20e740a57790fbf98af69f7a91e5c.jpg',
  ),
  Meet(
    accountName: 'Aryaofthenorthh',
    locationName: 'Leigh Off Leash dog Park',
    address: '2501 Maple St, Port Coquitlam BC V3C 2A2, Canada',
    description: 'Off leash park with water bowl and gravel, very large area to run.',
    locationCoordinates: LatLng(49.287942, -122.751642),
    meetTime: '5:50pm',
    date: 'Tomorrow, Sunday May 9th, 2021',
    image:
        'https://thedognetwork.ca/wp-content/uploads/2018/12/Leigh-Park-Off-Leash-Dog-Park-Coquitlam-BC-4-1080x608.jpg',
  ),
  Meet(
    accountName: 'Maggie',
    locationName: 'Port Moody Off-Leash Dog Park',
    address: '2715 Esplanade St, Port Moody, CA V3H 0C8',
    description: 'Off leash park with water bowl',
    locationCoordinates: LatLng(49.279197, -122.845936),
    meetTime: '11:00am',
    date: 'Today, Saturday May 8th, 2021',
    image:
        'https://thedognetwork.ca/wp-content/uploads/2019/10/Rocky-Point-Off-Leash-Dog-Park-Port-Moody-BC-4.jpg',
  ),
  Meet(
    accountName: 'Bodhi_miniaussie',
    locationName: 'Barnet Marine Park',
    address: '8101–8251 Barnet Rd, Burnaby BC, Canada',
    description: 'By the ocean so bring a towel!',
    locationCoordinates: LatLng(49.291330, -122.923233),
    meetTime: '6:00pm',
    date: 'Monday May 10th, 2021',
    image:
        'https://thedognetwork.ca/wp-content/uploads/2018/11/Barnet-Marine-Park-Off-Leash-Dog-Park-Burnaby-BC-8.jpg',
  ),
  Meet(
    accountName: 'kirakira_thetoller',
    locationName: 'Glen off-leash dog park',
    address: '1149 Westwood St, Coquitlam BC V3B 4S4, Canada',
    description: 'Very large fenced dog park with a small dog area as well!',
    locationCoordinates: LatLng(49.281760, -122.789722),
    meetTime: '4:00pm',
    date: 'Tuesday May 11th, 2021',
    image:
        'https://thedognetwork.ca/wp-content/uploads/2018/11/Glen-Park-Off-Leash-Dog-Park-Coquitlam-BC-5.jpg',
  ),
];
