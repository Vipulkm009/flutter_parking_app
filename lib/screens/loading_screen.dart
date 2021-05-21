import 'package:flutter/material.dart';
import 'package:flutter_parking_app/models/location.dart';
import 'package:flutter_parking_app/screens/home_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  void getLocation() async {
    Location location = new Location();
    await location.getLocation();
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return HomeScreen(
        location: location,
      );
    }));
  }

  @override
  void initState() {
    super.initState();
    getLocation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitFadingCircle(
          size: 100.0,
          color: Colors.white,
        ),
      ),
    );
  }
}
