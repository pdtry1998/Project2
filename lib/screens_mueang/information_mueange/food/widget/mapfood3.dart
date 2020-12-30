import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';



class MapFood3 extends StatefulWidget {
  @override
  _MapFood3State createState() => _MapFood3State();
}

class _MapFood3State extends State<MapFood3> {
  Set<Marker> _markers = {};

  void _onMapCreated(GoogleMapController controller){
    setState(() {
      _markers.add(
        Marker(markerId:MarkerId('id-1'),
            position:LatLng(7.8764639, 98.3933462),
            infoWindow: InfoWindow(
                title: 'ร้านข้าวแกงกระหรี่ฝ่าน',
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
        title: Text('ร้านข้าวแกงกระหรี่ฝ่าน'),
      ),
      body: GoogleMap(
          onMapCreated:_onMapCreated ,
          markers: _markers,
          initialCameraPosition:CameraPosition(
            target: LatLng(7.8764639, 98.3933462),
            zoom: 15.0,
          ) ),
    );
  }
}
