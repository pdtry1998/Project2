import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class kMap_Market2 extends StatefulWidget {
  @override
  _kMap_Market2State createState() => _kMap_Market2State();
}

class _kMap_Market2State extends State<kMap_Market2> {

  Set<Marker> _markers = {};

  void _onMapCreated(GoogleMapController controller){
    setState(() {
      _markers.add(
        Marker(markerId:MarkerId('id-1'),
            position:LatLng(7.8935833,98.2946152),
            infoWindow: InfoWindow(
                title: 'Bangla Walking Street',
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
        title: Text('Bangla Walking Street'),
      ),
      body: GoogleMap(
          onMapCreated:_onMapCreated ,
          markers: _markers,
          initialCameraPosition:CameraPosition(
            target: LatLng(7.8935833,98.2946152),
            zoom: 15.0,
          ) ),
    );
  }


}
