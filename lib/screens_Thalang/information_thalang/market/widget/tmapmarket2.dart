import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class tMap_Market2 extends StatefulWidget {
  @override
  _tMap_Market2State createState() => _tMap_Market2State();
}

class _tMap_Market2State extends State<tMap_Market2> {

  Set<Marker> _markers = {};

  void _onMapCreated(GoogleMapController controller){
    setState(() {
      _markers.add(
        Marker(markerId:MarkerId('id-1'),
            position:LatLng(8.11677,98.3040658),
            infoWindow: InfoWindow(
                title: 'สวนน้ำสแปลชจังเกิ้ล',
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
        title: Text('สวนน้ำสแปลชจังเกิ้ล'),
      ),
      body: GoogleMap(
          onMapCreated:_onMapCreated ,
          markers: _markers,
          initialCameraPosition:CameraPosition(
            target: LatLng(8.11677,98.3040658),
            zoom: 15.0,
          ) ),
    );
  }


}
