import 'package:google_maps_flutter/google_maps_flutter.dart';

class WorldWonder {
  final String name;
  final String description;
  final LatLng latLong;

  WorldWonder({
    required this.name,
    required this.description,
    required this.latLong,
  });
}
