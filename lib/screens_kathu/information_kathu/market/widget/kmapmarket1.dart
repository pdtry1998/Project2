import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class kMap_Market1 extends StatefulWidget {
  @override
  _kMap_Market1State createState() => _kMap_Market1State();
}

class _kMap_Market1State extends State<kMap_Market1> {

  Set<Marker> _markers = {};

  void _onMapCreated(GoogleMapController controller){
    setState(() {
      _markers.add(
        Marker(markerId:MarkerId('id-1'),
            position:LatLng(7.9127692,98.2935026),
            infoWindow: InfoWindow(
                title: 'ตลาดกะหลิม',
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
        title: Text('ตลาดกะหลิม'),
      ),
      body: GoogleMap(
          onMapCreated:_onMapCreated ,
          markers: _markers,
          initialCameraPosition:CameraPosition(
            target: LatLng(7.9127692,98.2935026),
            zoom: 15.0,
          ) ),
    );
  }


}
