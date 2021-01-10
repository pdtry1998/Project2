import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class tMap_Food2 extends StatefulWidget {
  @override
  _tMap_Food2State createState() => _tMap_Food2State();
}

class _tMap_Food2State extends State<tMap_Food2> {

  Set<Marker> _markers = {};

  void _onMapCreated(GoogleMapController controller){
    setState(() {
      _markers.add(
        Marker(markerId:MarkerId('id-1'),
            position:LatLng(8.0219595,98.3285434),
            infoWindow: InfoWindow(
                title: 'มาดูบัว (Ma Doo Bua)',
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
        title: Text('มาดูบัว (Ma Doo Bua)'),
      ),
      body: GoogleMap(
          onMapCreated:_onMapCreated ,
          markers: _markers,
          initialCameraPosition:CameraPosition(
            target: LatLng(8.0219595,98.3285434),
            zoom: 15.0,
          ) ),
    );
  }


}
