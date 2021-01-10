import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';



class MapMarket3 extends StatefulWidget {
  @override
  _MapMarket3State createState() => _MapMarket3State();
}

class _MapMarket3State extends State<MapMarket3> {
  Set<Marker> _markers = {};

  void _onMapCreated(GoogleMapController controller){
    setState(() {
      _markers.add(
        Marker(markerId:MarkerId('id-1'),
            position:LatLng(7.8861522, 98.3914608),
            infoWindow: InfoWindow(
                title: 'ตลาดปล่อยของ',
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
        title: Text('ตลาดปล่อยของ'),
      ),
      body: GoogleMap(
          onMapCreated:_onMapCreated ,
          markers: _markers,
          initialCameraPosition:CameraPosition(
            target: LatLng(7.8861522, 98.3914608),
            zoom: 15.0,
          ) ),
    );
  }
}
