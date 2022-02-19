import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ButtomSheet extends StatefulWidget {
  const ButtomSheet({Key? key}) : super(key: key);

  @override
  _ButtomSheetState createState() => _ButtomSheetState();
}

class _ButtomSheetState extends State<ButtomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Scaffold(
          body: Column(
        children: <Widget>[
          Container(
            height: 70,
            color: Color(0xff6200ee),
            child: ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.restaurant, color: Color(0xff6200ee)),
                radius: 25.0,
                backgroundColor: Colors.white,
              ),
              title: Text(
                'Burger King',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              subtitle: Text(
                "rabat agdal  25min ",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  IconButton(
                      icon: Icon(Icons.phone),
                      onPressed: () {},
                      color: Color(0xff6200ee)),
                  Text('call', style: TextStyle(color: Color(0xff6200ee)))
                ],
              ),
              Column(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.public),
                    onPressed: () {},
                    color: Color(0xff6200ee),
                    iconSize: 30,
                  ),
                  Text(
                    'website',
                    style: TextStyle(color: Color(0xff6200ee)),
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  IconButton(
                      icon: Icon(Icons.share),
                      onPressed: () {},
                      color: Color(0xff6200ee)),
                  Text('share', style: TextStyle(color: Color(0xff6200ee)))
                ],
              )
            ],
          ),
          ListTile(
            leading:
                Icon(FontAwesomeIcons.mapMarkerAlt, color: Color(0xff6200ee)),
            title: Text('Rabat agdal ,idawtanan,rue 10',
                style: TextStyle(color: Color(0xff6200ee))),
          ),
          ListTile(
            leading:
                Icon(Icons.query_builder_outlined, color: Color(0xff6200ee)),
            title: Text('open', style: TextStyle(color: Color(0xff6200ee))),
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.link, color: Color(0xff6200ee)),
            title: Text('https://studio.mapbox.com/tilesets/',
                style: TextStyle(color: Color(0xff6200ee))),
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.phone, color: Color(0xff6200ee)),
            title: Text(
              '+212-6518490593',
              style: TextStyle(color: Color(0xff6200ee)),
            ),
          ),
        ],
      )),
    );
  }
}
