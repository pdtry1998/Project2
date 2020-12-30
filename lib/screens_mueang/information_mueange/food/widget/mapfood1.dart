import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';



class MapFood1 extends StatefulWidget {
  @override
  _MapFood1State createState() => _MapFood1State();
}

class _MapFood1State extends State<MapFood1> {
  Set<Marker> _markers = {};

  void _onMapCreated(GoogleMapController controller){
    setState(() {
      _markers.add(
        Marker(markerId:MarkerId('id-1'),
            position:LatLng(7.8865387, 98.3838732),
            infoWindow: InfoWindow(
                title: 'เย็นตาโฟสามพี่น้อง',
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
        title: Text('เย็นตาโฟสามพี่น้อง'),
      ),
      body: GoogleMap(
          onMapCreated:_onMapCreated ,
          markers: _markers,
          initialCameraPosition:CameraPosition(
            target: LatLng(7.8865387, 98.3838732),
            zoom: 15.0,
          ) ),
    );
  }
}
