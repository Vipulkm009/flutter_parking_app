import 'package:flutter/material.dart';
import 'package:flutter_parking_app/screens/loading_screen.dart';

void main() {
  runApp(ParkingApp());
}

class ParkingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: LoadingScreen(),
    );
  }
}
