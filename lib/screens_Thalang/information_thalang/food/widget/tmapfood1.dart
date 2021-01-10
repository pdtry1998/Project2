import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class tMap_Food1 extends StatefulWidget {
  @override
  _tMap_Food1State createState() => _tMap_Food1State();
}

class _tMap_Food1State extends State<tMap_Food1> {

  Set<Marker> _markers = {};

  void _onMapCreated(GoogleMapController controller){
    setState(() {
      _markers.add(
        Marker(markerId:MarkerId('id-1'),
            position:LatLng(8.1972067,98.296793),
            infoWindow: InfoWindow(
                title: 'ตาทวย (Ta Tauy)',
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
        title: Text('ตาทวย (Ta Tauy)'),
      ),
      body: GoogleMap(
          onMapCreated:_onMapCreated ,
          markers: _markers,
          initialCameraPosition:CameraPosition(
            target: LatLng(8.1972067,98.296793),
            zoom: 15.0,
          ) ),
    );
  }


}
