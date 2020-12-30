import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class Map_2 extends StatefulWidget {
  @override
  _Map_2State createState() => _Map_2State();
}

class _Map_2State extends State<Map_2> {

  Set<Marker> _markers = {};

  void _onMapCreated(GoogleMapController controller){
    setState(() {
      _markers.add(
        Marker(markerId:MarkerId('id-1'),
            position:LatLng(7.8853541,98.3848537),
            infoWindow: InfoWindow(
                title: 'บ้านชินประชา',
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
        title: Text('บ้านชินประชา'),
      ),
      body: GoogleMap(
          onMapCreated:_onMapCreated ,
          markers: _markers,
          initialCameraPosition:CameraPosition(
            target: LatLng(7.8853541,98.3848537),
            zoom: 15.0,
          ) ),
    );
  }


}
