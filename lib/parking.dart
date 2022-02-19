import 'package:flutter/material.dart';
import 'package:real_time_app/HomeWithSidebar.dart';
import 'package:real_time_app/mapwidget.dart';
import 'package:real_time_app/parkingservices.dart';

class ParkingWidget extends StatefulWidget {
  const ParkingWidget({Key? key}) : super(key: key);

  @override
  _ParkingWidgetState createState() => _ParkingWidgetState();
}

class _ParkingWidgetState extends State<ParkingWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(
            flex: 12,
            child: Container(
              child: Container(),
            ),
          ),
          Flexible(
            flex: 3,
            child: Container(
              child: ParkingServices(),
            ),
          )
        ],
      ),
    );
  }
}
