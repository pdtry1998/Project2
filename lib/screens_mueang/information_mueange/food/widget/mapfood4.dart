import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';



class MapFood4 extends StatefulWidget {
  @override
  _MapFood4State createState() => _MapFood4State();
}

class _MapFood4State extends State<MapFood4> {
  Set<Marker> _markers = {};

  void _onMapCreated(GoogleMapController controller){
    setState(() {
      _markers.add(
        Marker(markerId:MarkerId('id-1'),
            position:LatLng(7.8765884, 98.388705),
            infoWindow: InfoWindow(
                title: 'โกลา หมี่ฮกเกี้ยน',
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
        title: Text('โกลา หมี่ฮกเกี้ยน'),
      ),
      body: GoogleMap(
          onMapCreated:_onMapCreated ,
          markers: _markers,
          initialCameraPosition:CameraPosition(
            target: LatLng(7.8765884, 98.388705),
            zoom: 15.0,
          ) ),
    );
  }
}
