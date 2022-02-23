import 'package:flutter/material.dart';
import 'package:real_time_app/screens/home/HomeWithSidebar.dart';
import 'package:real_time_app/map/mapwidget.dart';
import 'package:real_time_app/screens/parking/parkingservices.dart';

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
              child: MapWidget(),
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
