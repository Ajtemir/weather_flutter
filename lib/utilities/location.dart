import 'dart:developer';

import 'package:geolocator/geolocator.dart';

class Location {
  double? latitude;
  double? longitude;

  Future<void> getCurrentLocation() async {
    try {
      // LocationPermission permission;
      // permission = await Geolocator.checkPermission();
      // if (permission == LocationPermission.denied) {
      //   permission = await Geolocator.requestPermission();
      //   if (permission == LocationPermission.deniedForever) {
      //     return Future.error('Location Not Available');
      //   }
      // } else {
      //   throw Exception('Error');
      // }
      Position position = await Geolocator.getCurrentPosition(
              desiredAccuracy: LocationAccuracy.best)
          .timeout(Duration(seconds: 15));
      latitude = position.latitude;
      longitude = position.longitude;
      print("latitude => $latitude");
      print("longtitude => $longitude");
    } catch (e) {
      // print('Something goes wrong: $e');
      log('Something goes wrong: $e');
    }
  }
}