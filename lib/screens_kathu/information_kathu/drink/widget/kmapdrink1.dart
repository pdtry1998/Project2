import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class kMap_Drink1 extends StatefulWidget {
  @override
  _kMap_Drink1State createState() => _kMap_Drink1State();
}

class _kMap_Drink1State extends State<kMap_Drink1> {

  Set<Marker> _markers = {};

  void _onMapCreated(GoogleMapController controller){
    setState(() {
      _markers.add(
        Marker(markerId:MarkerId('id-1'),
            position:LatLng(7.8936302,98.2958677),
            infoWindow: InfoWindow(
                title: 'ไทเกอร์',
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
        title: Text('ไทเกอร์'),
      ),
      body: GoogleMap(
          onMapCreated:_onMapCreated ,
          markers: _markers,
          initialCameraPosition:CameraPosition(
            target: LatLng(7.8936302,98.2958677),
            zoom: 15.0,
          ) ),
    );
  }


}
