// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flighttracker/configs/theme_color.dart';
import 'package:flighttracker/views/map_page.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: secondColor,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MapPage(),
            ),
          );
        },
        label: Text(
          "Explore",
          style: TextStyle(
            color: mainColor,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        physics: NeverScrollableScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 25, bottom: 25),
            child: Center(
              child: Text(
                "Fligt Track",
                style: TextStyle(
                  color: secondColor,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          LottieBuilder.network(
              "https://assets1.lottiefiles.com/packages/lf20_mksle47o.json"),
        ],
      ),
    );
  }
}
