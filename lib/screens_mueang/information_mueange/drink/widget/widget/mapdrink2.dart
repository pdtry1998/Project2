import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';



class MapDrink2 extends StatefulWidget {
  @override
  _MapDrink2State createState() => _MapDrink2State();
}

class _MapDrink2State extends State<MapDrink2> {
  Set<Marker> _markers = {};

  void _onMapCreated(GoogleMapController controller){
    setState(() {
      _markers.add(
        Marker(markerId:MarkerId('id-1'),
            position:LatLng(7.8797033, 98.397152),
            infoWindow: InfoWindow(
                title: 'เพลินจิต',
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
        title: Text('เพลินจิต'),
      ),
      body: GoogleMap(
          onMapCreated:_onMapCreated ,
          markers: _markers,
          initialCameraPosition:CameraPosition(
            target: LatLng(7.8797033, 98.397152),
            zoom: 15.0,
          ) ),
    );
  }
}
