import 'package:flutter/material.dart';

class ParkingSpots extends StatefulWidget {
  const ParkingSpots({Key? key}) : super(key: key);

  @override
  _ParkingSpotsState createState() => _ParkingSpotsState();
}

class _ParkingSpotsState extends State<ParkingSpots> {
  String? SelectedSpot;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(10),
        scrollDirection: Axis.horizontal,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          InkWell(
            onTap: () {
              SelectedSpot = '1';
              setState(() {});
            },
            child: Container(
              decoration: BoxDecoration(
                  color: SpotColor("1"),
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              padding: const EdgeInsets.all(8),
              child: Center(
                  child: Column(
                children: [
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "1",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    "available",
                    style: TextStyle(color: Colors.black),
                  )
                ],
              )),
            ),
          ),
          InkWell(
            onTap: () {
              SelectedSpot = '2';
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey[600],
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              padding: const EdgeInsets.all(8),
              child: Center(
                  child: Column(
                children: [
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "2",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    "full",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              )),
            ),
          ),
          InkWell(
            onTap: () {
              SelectedSpot = '3';
              setState(() {});
            },
            child: Container(
              decoration: BoxDecoration(
                  color: SpotColor("3"),
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              padding: const EdgeInsets.all(8),
              child: Center(
                  child: Column(
                children: [
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "3",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    "available",
                    style: TextStyle(color: Colors.black),
                  )
                ],
              )),
            ),
          ),
          InkWell(
            onTap: () {
              SelectedSpot = '4';
              setState(() {});
            },
            child: Container(
              decoration: BoxDecoration(
                  color: SpotColor("4"),
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              padding: const EdgeInsets.all(8),
              child: Center(
                  child: Column(
                children: [
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "4",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    "available",
                    style: TextStyle(color: Colors.black),
                  )
                ],
              )),
            ),
          ),
          InkWell(
            onTap: () {
              SelectedSpot = '5';
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey[600],
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              padding: const EdgeInsets.all(8),
              child: Center(
                  child: Column(
                children: [
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "5",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    "full",
                    style: TextStyle(color: Colors.black),
                  )
                ],
              )),
            ),
          ),
          InkWell(
            onTap: () {
              SelectedSpot = '6';
              setState(() {});
            },
            child: Container(
              decoration: BoxDecoration(
                  color: SpotColor("6"),
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              padding: const EdgeInsets.all(8),
              child: Center(
                  child: Column(
                children: [
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "6",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    "available",
                    style: TextStyle(color: Colors.black),
                  )
                ],
              )),
            ),
          ),
          InkWell(
            onTap: () {
              SelectedSpot = '7';
              setState(() {});
            },
            child: Container(
              decoration: BoxDecoration(
                  color: SpotColor("7"),
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              padding: const EdgeInsets.all(8),
              child: Center(
                  child: Column(
                children: [
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "7",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    "available",
                    style: TextStyle(color: Colors.black),
                  )
                ],
              )),
            ),
          ),
          InkWell(
            onTap: () {
              SelectedSpot = '8';
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey[600],
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              padding: const EdgeInsets.all(8),
              child: Center(
                  child: Column(
                children: [
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "8",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    "full",
                    style: TextStyle(color: Colors.black),
                  )
                ],
              )),
            ),
          ),
          InkWell(
            onTap: () {
              SelectedSpot = '9';
              setState(() {});
            },
            child: Container(
              decoration: BoxDecoration(
                  color: SpotColor("9"),
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              padding: const EdgeInsets.all(8),
              child: Center(
                  child: Column(
                children: [
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "9",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    "available",
                    style: TextStyle(color: Colors.black),
                  )
                ],
              )),
            ),
          ),
          InkWell(
            onTap: () {
              SelectedSpot = '10';
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey[600],
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              padding: const EdgeInsets.all(8),
              child: Center(
                  child: Column(
                children: [
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "10",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    "full",
                    style: TextStyle(color: Colors.black),
                  )
                ],
              )),
            ),
          ),
          InkWell(
            onTap: () {
              SelectedSpot = '11';
              setState(() {});
            },
            child: Container(
              decoration: BoxDecoration(
                  color: SpotColor("11"),
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              padding: const EdgeInsets.all(8),
              child: Center(
                  child: Column(
                children: [
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "11",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    "available",
                    style: TextStyle(color: Colors.black),
                  )
                ],
              )),
            ),
          ),
          InkWell(
            onTap: () {
              SelectedSpot = '12';
              setState(() {});
            },
            child: Container(
              decoration: BoxDecoration(
                  color: SpotColor("12"),
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              padding: const EdgeInsets.all(8),
              child: Center(
                  child: Column(
                children: [
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "12",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    "available",
                    style: TextStyle(color: Colors.black),
                  )
                ],
              )),
            ),
          ),
          InkWell(
            onTap: () {
              SelectedSpot = '13';
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey[600],
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              padding: const EdgeInsets.all(8),
              child: Center(
                  child: Column(
                children: [
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "13",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    "full",
                    style: TextStyle(color: Colors.black),
                  )
                ],
              )),
            ),
          ),
          InkWell(
            onTap: () {
              SelectedSpot = '14';
              setState(() {});
            },
            child: Container(
              decoration: BoxDecoration(
                  color: SpotColor("14"),
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              padding: const EdgeInsets.all(8),
              child: Center(
                  child: Column(
                children: [
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "14",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    "available",
                    style: TextStyle(color: Colors.black),
                  )
                ],
              )),
            ),
          ),
          InkWell(
            onTap: () {
              SelectedSpot = '15';
              setState(() {});
            },
            child: Container(
              decoration: BoxDecoration(
                  color: SpotColor("15"),
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              padding: const EdgeInsets.all(8),
              child: Center(
                  child: Column(
                children: [
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "15",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    "available",
                    style: TextStyle(color: Colors.black),
                  )
                ],
              )),
            ),
          ),
          InkWell(
            onTap: () {
              SelectedSpot = '16';
              setState(() {});
            },
            child: Container(
              decoration: BoxDecoration(
                  color: SpotColor("16"),
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              padding: const EdgeInsets.all(8),
              child: Center(
                  child: Column(
                children: [
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "16",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    "available",
                    style: TextStyle(color: Colors.black),
                  )
                ],
              )),
            ),
          ),
          InkWell(
            onTap: () {
              SelectedSpot = '17';
              setState(() {});
            },
            child: Container(
              decoration: BoxDecoration(
                  color: SpotColor("17"),
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              padding: const EdgeInsets.all(8),
              child: Center(
                  child: Column(
                children: [
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "17",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    "available",
                    style: TextStyle(color: Colors.black),
                  )
                ],
              )),
            ),
          ),
          InkWell(
            onTap: () {
              SelectedSpot = '18';
              setState(() {});
            },
            child: Container(
              decoration: BoxDecoration(
                  color: SpotColor("18"),
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              padding: const EdgeInsets.all(8),
              child: Center(
                  child: Column(
                children: [
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "18",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    "available",
                    style: TextStyle(color: Colors.black),
                  )
                ],
              )),
            ),
          ),
          InkWell(
            onTap: () {
              SelectedSpot = '19';
              setState(() {});
            },
            child: Container(
              decoration: BoxDecoration(
                  color: SpotColor("19"),
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              padding: const EdgeInsets.all(8),
              child: Center(
                  child: Column(
                children: [
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "19",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    "available",
                    style: TextStyle(color: Colors.black),
                  )
                ],
              )),
            ),
          ),
          InkWell(
            onTap: () {
              SelectedSpot = '20';
              setState(() {});
            },
            child: Container(
              decoration: BoxDecoration(
                  color: SpotColor("20"),
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              padding: const EdgeInsets.all(8),
              child: Center(
                  child: Column(
                children: [
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "20",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    "available",
                    style: TextStyle(color: Colors.black),
                  )
                ],
              )),
            ),
          ),
        ],
      ),
      height: 220,
    );
  }

  Color? SpotColor(String? spot) {
    if (spot == SelectedSpot) {
      return Colors.lime;
    } else {
      return Colors.grey[350];
    }
  }
}
