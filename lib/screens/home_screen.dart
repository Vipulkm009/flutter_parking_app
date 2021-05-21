import 'package:flutter/material.dart';
import 'package:flutter_google_maps/flutter_google_maps.dart';
import 'package:flutter_parking_app/models/location.dart';

class HomeScreen extends StatefulWidget {
  Location location;
  HomeScreen({this.location});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Where do you want to park?'),
      ),
      body: Container(
        child: Stack(
          children: <Widget>[
            GoogleMap(
              initialPosition:
                  GeoCoord(widget.location.latitude, widget.location.longitude),
            ),
          ],
        ),
      ),
    );
  }
}
