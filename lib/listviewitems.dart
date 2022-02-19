import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:real_time_app/payment.dart';

class ParkingItems extends StatefulWidget {
  String? parkingName;
  String? distance;
  String? adresse;
  double? lat;
  double? long;

  ParkingItems(String parkingName, String distance, String adresse, double lat,
      double long) {
    this.parkingName = parkingName;
    this.distance = distance;
    this.adresse = adresse;
    this.lat = lat;
    this.long = long;
  }

  @override
  _ParkingItemsState createState() => _ParkingItemsState();
}

class _ParkingItemsState extends State<ParkingItems> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Flexible(
              flex: 2,
              child: Container(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/parking.jpg'),
                        radius: 30.0,
                      ),
                    ),
                    Text(
                      '${widget.distance}',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                    ),
                    Container(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                        child: Text("Km away",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w500)))
                  ],
                ),
              )),
          Flexible(
              flex: 5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      padding: EdgeInsets.fromLTRB(20, 10, 0, 5),
                      alignment: Alignment.topLeft,
                      child: Text(
                        '${widget.parkingName}',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w700),
                      )),
                  Container(
                      padding: EdgeInsets.fromLTRB(20, 0, 0, 5),
                      alignment: Alignment.topLeft,
                      child: Text('${widget.adresse}  ',
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.w500))),
                  Container(
                      padding: EdgeInsets.fromLTRB(20, 0, 0, 5),
                      alignment: Alignment.topLeft,
                      child: Text(
                        "parking spaces available",
                        style: TextStyle(
                            fontSize: 8,
                            color: Colors.green[700],
                            fontWeight: FontWeight.w800),
                      ))
                ],
              )),
          Flexible(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.teal[600],
                    borderRadius: BorderRadius.all(Radius.circular(25))),
                child: TextButton(
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      ' park\n here!',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PaymentScreen(
                                  lat: widget.lat,
                                  long: widget.long,
                                  parkingName: widget.parkingName,
                                  adresse: widget.adresse,
                                )));
                  },
                ),
              ))
        ],
      ),
    );
  }
}
