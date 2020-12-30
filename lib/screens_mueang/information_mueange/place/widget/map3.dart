import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class Map_3 extends StatefulWidget {
  @override
  _Map_3State createState() => _Map_3State();
}

class _Map_3State extends State<Map_3> {

  Set<Marker> _markers = {};

  void _onMapCreated(GoogleMapController controller){
    setState(() {
      _markers.add(
        Marker(markerId:MarkerId('id-1'),
            position:LatLng(7.884899,98.3867695),
            infoWindow: InfoWindow(
                title: 'พิธภัณฑ์ภูเก็ตไทยหัว',
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
        title: Text('พิธภัณฑ์ภูเก็ตไทยหัว'),
      ),
      body: GoogleMap(
          onMapCreated:_onMapCreated ,
          markers: _markers,
          initialCameraPosition:CameraPosition(
            target: LatLng(7.884899,98.3867695),
            zoom: 15.0,
          ) ),
    );
  }


}
