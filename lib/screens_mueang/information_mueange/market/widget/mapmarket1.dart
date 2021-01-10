import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';



class MapMarket1 extends StatefulWidget {
  @override
  _MapMarket1State createState() => _MapMarket1State();
}

class _MapMarket1State extends State<MapMarket1> {
  Set<Marker> _markers = {};

  void _onMapCreated(GoogleMapController controller){
    setState(() {
      _markers.add(
        Marker(markerId:MarkerId('id-1'),
            position:LatLng(7.8847596, 98.3888222),
            infoWindow: InfoWindow(
                title: 'ถนนคนเดินหลาดใหญ่',
                snippet: 'ถึงแล้ว'
            )
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ถนนคนเดินหลาดใหญ่'),
      ),
      body: GoogleMap(
          onMapCreated:_onMapCreated ,
          markers: _markers,
          initialCameraPosition:CameraPosition(
            target: LatLng(7.8847596, 98.3888222),
            zoom: 15.0,
          ) ),
    );
  }
}
