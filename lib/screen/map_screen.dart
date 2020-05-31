import 'package:covid_19/widget/app_drawer.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatelessWidget {
  GoogleMapController mapController;

  final LatLng _center = const LatLng(29.9324141, 31.0751268);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  List<Marker> markers = [
    Marker(
      markerId: MarkerId('1'),
      position: LatLng(29.9302329, 31.0753516),
    ),
    Marker(
      markerId: MarkerId('2'),
      position: LatLng(29.9413883,31.0669406),
    ),
    Marker(
      markerId: MarkerId('3'),
      position: LatLng(29.9281849,31.0771095),
    ),
    Marker(
      markerId: MarkerId('3'),
      position: LatLng(29.9371896,31.0760656),
    ),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        title: Text('Home Screen'),
        backgroundColor: Colors.green,
      ),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: _center,
          zoom: 11.0,
        ),
        markers: markers.toSet(),
      ),
    );
  }
}