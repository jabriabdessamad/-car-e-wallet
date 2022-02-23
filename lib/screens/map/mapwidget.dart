import 'dart:async';
import 'dart:ffi';

import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:real_time_app/screens/map/buttomsheet.dart';

class MapWidget extends StatefulWidget {
  Marker? parkingDestination;

  MapWidget({Key? key, this.parkingDestination}) : super(key: key);

  @override
  _MapWidgetState createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget> {
  StreamSubscription? _locationSubscription;
  Location _locationTracker = Location();
  Marker? origin;

  Circle? circle;
  GoogleMapController? _controller;

  static final CameraPosition initialLocation = CameraPosition(
    target: LatLng(33.9689, -6.8469),
    zoom: 14.4746,
  );

  Future<Uint8List> getMarker() async {
    ByteData byteData =
        await DefaultAssetBundle.of(context).load("assets/images/location.png");
    return byteData.buffer.asUint8List();
  }

  Set<Polyline> _polylines = Set<Polyline>();
  List<LatLng> polylineCoordinates = [];
  PolylinePoints? polylinePoints;

  @override
  void initState() {
    polylinePoints = PolylinePoints();
    super.initState();
  }

  void setPolylines() async {
    if ((origin != null) & (widget.parkingDestination != null)) {
      PolylineResult poly_result = await polylinePoints!
          .getRouteBetweenCoordinates(
              'AIzaSyDuOY-FwWPOraXA8Dqfh779JOpHh2tsCYU',
              PointLatLng(
                  origin!.position.latitude, origin!.position.longitude),
              PointLatLng(widget.parkingDestination!.position.latitude,
                  widget.parkingDestination!.position.longitude));
      if (poly_result.status == 'OK') {
        poly_result.points.forEach((PointLatLng point) {
          polylineCoordinates.add(LatLng(point.latitude, point.longitude));
        });
      }

      setState(() {
        _polylines.add(Polyline(
            polylineId: PolylineId('polyline'),
            color: Colors.red,
            width: 5,
            points: polylineCoordinates));
      });
    }
  }

  void updateMarkerAndCircle(LocationData newLocalData, Uint8List imageData) {
    LatLng latlng = LatLng(newLocalData.latitude!, newLocalData.longitude!);
    this.setState(() {
      origin = Marker(
          markerId: MarkerId("home"),
          position: latlng,
          rotation: newLocalData.heading!,
          draggable: false,
          zIndex: 2,
          flat: true,
          anchor: Offset(0.5, 0.5),
          icon: BitmapDescriptor.fromBytes(imageData),
          onTap: () {
            showBottomSheet(
                context: context,
                builder: (builder) {
                  return (ButtomSheet());
                });
          });
      circle = Circle(
          circleId: CircleId("car"),
          radius: 15,
          zIndex: 1,
          strokeColor: Colors.blue,
          center: latlng,
          fillColor: Colors.blue.withAlpha(70));
    });
  }

  void getCurrentLocation() async {
    try {
      Uint8List imageData = await getMarker();
      var location = await _locationTracker.getLocation();

      updateMarkerAndCircle(location, imageData);

      if (_locationSubscription != null) {
        _locationSubscription!.cancel();
      }

      _locationSubscription =
          _locationTracker.onLocationChanged.listen((newLocalData) {
        if (_controller != null) {
          _controller!.animateCamera(CameraUpdate.newCameraPosition(
              new CameraPosition(
                  bearing: 192.8334901395799,
                  target:
                      LatLng(newLocalData.latitude!, newLocalData.longitude!),
                  tilt: 0,
                  zoom: 16.00)));
          updateMarkerAndCircle(newLocalData, imageData);
        }
      });
    } on PlatformException catch (e) {
      if (e.code == 'PERMISSION_DENIED') {
        debugPrint("Permission Denied");
      }
    }
  }

  @override
  void dispose() {
    if (_locationSubscription != null) {
      _locationSubscription!.cancel();
    }
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        zoomControlsEnabled: false,
        mapType: MapType.normal,
        initialCameraPosition: initialLocation,
        markers: {
          if (origin != null) origin!,
          if (widget.parkingDestination != null) widget.parkingDestination!
        },
        polylines: _polylines,
        circles: Set.of((circle != null) ? [circle!] : []),
        onMapCreated: (GoogleMapController controller) {
          _controller = controller;
          getCurrentLocation();
          Future.delayed(const Duration(milliseconds: 2000), () {
            setPolylines();
          });
        },
        onLongPress: _addMarker,
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.location_searching),
          onPressed: () {
            setPolylines();
          }),
    );
  }

  void _addMarker(LatLng pos) {
    setState(() {
      widget.parkingDestination = Marker(
          markerId: const MarkerId('destination'),
          infoWindow: const InfoWindow(title: 'destination'),
          icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
          position: LatLng(33.9689, -6.8469));
    });
  }
}
