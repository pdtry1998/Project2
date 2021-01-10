import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class tMap_Place1 extends StatefulWidget {
  @override
  _tMap_Place1State createState() => _tMap_Place1State();
}

class _tMap_Place1State extends State<tMap_Place1> {

  Set<Marker> _markers = {};

  void _onMapCreated(GoogleMapController controller){
    setState(() {
      _markers.add(
        Marker(markerId:MarkerId('id-1'),
            position:LatLng(8.0341578,98.335351),
            infoWindow: InfoWindow(
                title: 'วัดพระทอง (วัดพระผุด)',
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
        title: Text('วัดพระทอง (วัดพระผุด)'),
      ),
      body: GoogleMap(
          onMapCreated:_onMapCreated ,
          markers: _markers,
          initialCameraPosition:CameraPosition(
            target: LatLng(8.0341578,98.335351),
            zoom: 15.0,
          ) ),
    );
  }


}
