import 'package:flutter/material.dart';
import 'package:real_time_app/findparking.dart';

class ParkingServices extends StatefulWidget {
  const ParkingServices({Key? key}) : super(key: key);

  @override
  _ParkingServicesState createState() => _ParkingServicesState();
}

class _ParkingServicesState extends State<ParkingServices> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
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
              child: TextButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.location_searching_sharp,
                    color: Colors.black,
                  ),
                  label: Text(
                    'Av. El Hadj Ahmed Charkaoui, Rabat',
                    style: TextStyle(color: Colors.black),
                  ))),
          Container(
            height: 1,
            color: Colors.grey,
          ),
          Container(
            padding: EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FindParking()));
                  },
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.deepPurple[900],
                            shape: BoxShape.circle),
                        child: IconButton(
                          color: Colors.white,
                          icon: Icon(Icons.local_parking),
                          iconSize: 30,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FindParking()));
                          },
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'find parking',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 11,
                            color: Colors.black),
                      )
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.deepPurple[900],
                            shape: BoxShape.circle),
                        child: IconButton(
                          color: Colors.white,
                          icon: Icon(Icons.history),
                          iconSize: 30,
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'parking history',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 11,
                            color: Colors.black),
                      )
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.deepPurple[900],
                            shape: BoxShape.circle),
                        child: IconButton(
                          color: Colors.white,
                          icon: Icon(Icons.star),
                          iconSize: 30,
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'favorite parking',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 11,
                            color: Colors.black),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
