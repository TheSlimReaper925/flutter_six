import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:homework_six/data/models/wonders_model.dart';

class WondersScreen extends StatelessWidget {
  WondersScreen({Key? key}) : super(key: key);
  late GoogleMapController mapController;

  static const routeName = "/wonder-detail";

  @override
  Widget build(BuildContext context) {
    final Map parsedData = ModalRoute.of(context)!.settings.arguments as Map;
    final currentWonder = parsedData["wonder"];

    void _onMapCreted(GoogleMapController controller) {
      mapController = controller;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(currentWonder.name),
        centerTitle: true,
      ),
      body: GoogleMap(
        onMapCreated: _onMapCreted,
        initialCameraPosition:
            CameraPosition(target: currentWonder.latLong, zoom: 15.0),
        markers: {
          Marker(
            markerId: MarkerId(currentWonder.name),
            position: currentWonder.latLong,
            // icon: BitmapDescriptor.,
            infoWindow: InfoWindow(
              title: currentWonder.name,
              snippet: currentWonder.description,
            ),
          )
        },
      ),
    );
  }
}
