// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'dart:async';

import 'package:flighttracker/configs/theme_color.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapPage extends StatefulWidget {
  MapPage({Key? key}) : super(key: key);

  @override
  State<MapPage> createState() => _MapPageState();
}

GoogleMapController? _mapController;

class _MapPageState extends State<MapPage> {
  LatLng _sw = LatLng(49.674, -14.01517);
  LatLng _ne = LatLng(61.061, 2.0919127);
  void _OnMapCreated(GoogleMapController controller) async {
    _mapController = controller;
  }

  bool isLoading = true;
  @override
  Widget build(BuildContext context) {
    setState(() {
      _mapController?.animateCamera(
        CameraUpdate.newLatLngBounds(
            LatLngBounds(southwest: _sw, northeast: _ne), 5),
      );
    });
    Timer(
      Duration(milliseconds: 3700),
      () {
        setState(() {
          isLoading = false;
        });
      },
    );
    return Scaffold(
      backgroundColor: mainColor,
      body: isLoading
          ? Center(
              child: Image(
                width: MediaQuery.of(context).size.width / 1.5,
                image: AssetImage("assets/loadingAnimation.gif"),
              ),
            )
          : SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: GoogleMap(
                onMapCreated: _OnMapCreated,
                mapType: MapType.satellite,
                compassEnabled: true,
                myLocationButtonEnabled: true,
                initialCameraPosition: CameraPosition(
                  target: LatLng(_sw.latitude, _ne.longitude),
                ),
              ),
            ),
    );
  }
}
