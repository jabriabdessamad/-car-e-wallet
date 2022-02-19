import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:real_time_app/mapwidget.dart';
import 'package:real_time_app/parkingSpots.dart';

class PaymentScreen extends StatefulWidget {
  String? parkingName;
  String? adresse;
  double? lat;
  double? long;
  PaymentScreen({Key? key, this.lat, this.long, this.parkingName, this.adresse})
      : super(key: key);

  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  DateTime dateTime = DateTime.now();
  void makeRoutePage({BuildContext? context, Widget? pageRef}) {
    Navigator.pushAndRemoveUntil(
        context!,
        MaterialPageRoute(builder: (context) => pageRef!),
        (Route<dynamic> route) => false);
  }

  createAlertDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return Container(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: AlertDialog(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                content: BookingConfirmation(),
              ),
            ),
          );
        });
  }

  Widget BookingConfirmation() => Container(
        width: 950,
        height: 250,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text(
                'thank you for booking our parking',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink[900]),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              child: Text(
                'Booking Informations:',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    child: Row(children: [
                      Icon(
                        Icons.calendar_today_rounded,
                        color: Colors.deepPurple[900],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('13:00  - 10/02/2022'),
                    ]),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Row(children: [
                      Icon(
                        Icons.local_parking,
                        color: Colors.deepPurple[900],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Rabat Parking Sa /'),
                      Text(' Spot 2',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17))
                    ]),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Row(children: [
                      Icon(
                        Icons.location_on_sharp,
                        color: Colors.deepPurple[900],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Place Mamounia Hassan-Rabat'),
                    ]),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    width: 140,
                    decoration: BoxDecoration(
                        color: Colors.grey[500],
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: TextButton(
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          'Confirm',
                          style: TextStyle(fontSize: 17, color: Colors.white),
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context, rootNavigator: true).pop();

                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => MapWidget(
                                  parkingDestination: Marker(
                                      markerId: MarkerId('destination'),
                                      position:
                                          LatLng(widget.lat!, widget.long!),
                                      infoWindow: const InfoWindow(
                                          title: 'destination'),
                                      icon:
                                          BitmapDescriptor.defaultMarkerWithHue(
                                              BitmapDescriptor.hueRed)),
                                )));
                      },
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      );

  Widget buidTimePicker() => SizedBox(
        height: 150,
        width: 270,
        child: CupertinoDatePicker(
            initialDateTime: dateTime,
            mode: CupertinoDatePickerMode.time,
            use24hFormat: true,
            onDateTimeChanged: (dateTime) => setState(() {
                  this.dateTime = dateTime;
                })),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[900],
        title: Text('Book parking spot'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                'Parking Spots',
                style: TextStyle(
                    color: Colors.blueGrey[700],
                    fontSize: 23,
                    fontWeight: FontWeight.w700),
              ),
            ),
            ParkingSpots(),
            Container(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 15),
                    margin: EdgeInsets.fromLTRB(15, 25, 15, 15),
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 10),
                          child: Text(
                            '${widget.parkingName}',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(bottom: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  alignment: Alignment.centerRight,
                                  child: Icon(
                                    Icons.location_on_sharp,
                                    color: Colors.blue,
                                  )),
                              Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text('${widget.adresse} ',
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500)))
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                alignment: Alignment.centerRight,
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                child: Text('\$ 0.5',
                                    style: TextStyle(
                                        color: Colors.yellow[700],
                                        fontSize: 30,
                                        fontWeight: FontWeight.w700)),
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                padding: EdgeInsets.fromLTRB(3, 12, 0, 0),
                                child: Text('per hour',
                                    style: TextStyle(
                                        color: Colors.grey[700],
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                          child: Text(" parking time:",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700)),
                        ),
                        buidTimePicker(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              width: 240,
              decoration: BoxDecoration(
                  color: Colors.green[600],
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: TextButton(
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Book Parking !',
                    style: TextStyle(fontSize: 17, color: Colors.white),
                  ),
                ),
                onPressed: () {
                  createAlertDialog(context);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
