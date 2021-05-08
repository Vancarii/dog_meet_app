import 'package:flutter/material.dart';

kBoxShadow() {
  return BoxShadow(
    color: Colors.black26,
    spreadRadius: 1,
    blurRadius: 1,
    offset: Offset(1, 1), // changes position of shadow
  );
}

const double kBottomNavBarHeight = 50;

const double kMeetUpPostHeight = 400;
const double kMarketPostHeight = 330;

//This is placed here so that they are global
//variable names make it easier to reuse
const double kMinSnapPosition = 100;
const double kMaxSnapPosition = double.infinity;
// TODO: Change these values so that it works for all devices
/*const double minSnapPosition = 0.15;
const double maxSnapPosition = 0.99;*/

//Fullscreen Image Hero String Tags
const String kNewListingPostHeroTag = 'ListingImage';

const String kStoreProfileCoverHeroTag = 'StoreCover';
const String kStoreProfileImageHeroTag = 'StoreProfileImage';

//Transition Duration
const int kSlideLeftToRightJoinedDuration = 200;
