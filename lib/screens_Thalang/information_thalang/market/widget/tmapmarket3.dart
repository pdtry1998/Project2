import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class tMap_Market3 extends StatefulWidget {
  @override
  _tMap_Market3State createState() => _tMap_Market3State();
}

class _tMap_Market3State extends State<tMap_Market3> {

  Set<Marker> _markers = {};

  void _onMapCreated(GoogleMapController controller){
    setState(() {
      _markers.add(
        Marker(markerId:MarkerId('id-1'),
            position:LatLng(8.0295008,98.2962503),
            infoWindow: InfoWindow(
                title: 'ศาลหลักเมืองภูเก็ต',
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
        title: Text('ศาลหลักเมืองภูเก็ต'),
      ),
      body: GoogleMap(
          onMapCreated:_onMapCreated ,
          markers: _markers,
          initialCameraPosition:CameraPosition(
            target: LatLng(8.0295008,98.2962503),
            zoom: 15.0,
          ) ),
    );
  }


}
