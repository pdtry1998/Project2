import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class tMap_Market4 extends StatefulWidget {
  @override
  _tMap_Market4State createState() => _tMap_Market4State();
}

class _tMap_Market4State extends State<tMap_Market4> {

  Set<Marker> _markers = {};

  void _onMapCreated(GoogleMapController controller){
    setState(() {
      _markers.add(
        Marker(markerId:MarkerId('id-1'),
            position:LatLng(8.0913228,98.2902685),
            infoWindow: InfoWindow(
                title: 'หาดในยาง',
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
        title: Text('หาดในยาง'),
      ),
      body: GoogleMap(
          onMapCreated:_onMapCreated ,
          markers: _markers,
          initialCameraPosition:CameraPosition(
            target: LatLng(8.0913228,98.2902685),
            zoom: 15.0,
          ) ),
    );
  }


}
