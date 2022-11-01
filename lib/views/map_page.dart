// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapPage extends StatefulWidget {
  MapPage({Key? key}) : super(key: key);

  @override
  State<MapPage> createState() => _MapPageState();
}

GoogleMapController? _mapController;

class _MapPageState extends State<MapPage> {
  LatLng _sw = LatLng(49.674, -14.015517);
  LatLng _ne = LatLng(61.061, 2.0919117);
  void _OnMapCreated(GoogleMapController controller) async {
    _mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    setState(() {
      _mapController?.animateCamera(
        CameraUpdate.newLatLngBounds(
            LatLngBounds(southwest: _sw, northeast: _ne), 5),
      );
    });

    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: GoogleMap(
              onMapCreated: _OnMapCreated,
              mapType: MapType.satellite,
              initialCameraPosition: CameraPosition(
                target: LatLng(_sw.latitude, _ne.longitude),
                zoom: 3,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
