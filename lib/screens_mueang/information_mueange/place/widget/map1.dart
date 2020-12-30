import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class Map_1 extends StatefulWidget {
  @override
  _Map_1State createState() => _Map_1State();
}

class _Map_1State extends State<Map_1> {

  Set<Marker> _markers = {};

  void _onMapCreated(GoogleMapController controller){
    setState(() {
      _markers.add(
        Marker(markerId:MarkerId('id-1'),
            position:LatLng(7.8756808, 98.3900145),
            infoWindow: InfoWindow(
                title: 'นั่งเรือกอจ๊าน',
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
        title: Text('นั่งเรือกอจ๊าน'),
      ),
      body: GoogleMap(
          onMapCreated:_onMapCreated ,
          markers: _markers,
          initialCameraPosition:CameraPosition(
            target: LatLng(7.8756808, 98.3900145),
            zoom: 15.0,
          ) ),
    );
  }


}
