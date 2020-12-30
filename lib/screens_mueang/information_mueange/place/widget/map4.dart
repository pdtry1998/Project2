import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class Map_4 extends StatefulWidget {
  @override
  _Map_4State createState() => _Map_4State();
}

class _Map_4State extends State<Map_4> {

  Set<Marker> _markers = {};

  void _onMapCreated(GoogleMapController controller){
    setState(() {
      _markers.add(
        Marker(markerId:MarkerId('id-1'),
            position:LatLng(7.825141, 98.3770312),
            infoWindow: InfoWindow(
                title: 'จุดชมวิวเขาขาด',
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
        title: Text('จุดชมวิวเขาขาด'),
      ),
      body: GoogleMap(
          onMapCreated:_onMapCreated ,
          markers: _markers,
          initialCameraPosition:CameraPosition(
            target: LatLng(7.825141, 98.3770312),
            zoom: 15.0,
          ) ),
    );
  }


}
