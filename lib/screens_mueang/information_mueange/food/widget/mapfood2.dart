import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';



class MapFood2 extends StatefulWidget {
  @override
  _MapFood2State createState() => _MapFood2State();
}

class _MapFood2State extends State<MapFood2> {
  Set<Marker> _markers = {};

  void _onMapCreated(GoogleMapController controller){
    setState(() {
      _markers.add(
        Marker(markerId:MarkerId('id-1'),
            position:LatLng(7.8801176, 98.3863845),
            infoWindow: InfoWindow(
                title: 'หมี่สามสาว',
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
        title: Text('หมี่สามสาว'),
      ),
      body: GoogleMap(
          onMapCreated:_onMapCreated ,
          markers: _markers,
          initialCameraPosition:CameraPosition(
            target: LatLng(7.8801176, 98.3863845),
            zoom: 15.0,
          ) ),
    );
  }
}
