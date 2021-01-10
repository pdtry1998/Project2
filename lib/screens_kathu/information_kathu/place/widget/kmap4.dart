import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class kMap_4 extends StatefulWidget {
  @override
  _kMap_4State createState() => _kMap_4State();
}

class _kMap_4State extends State<kMap_4> {

  Set<Marker> _markers = {};

  void _onMapCreated(GoogleMapController controller){
    setState(() {
      _markers.add(
        Marker(markerId:MarkerId('id-1'),
            position:LatLng(7.9160103,98.3428909),
            infoWindow: InfoWindow(
                title: 'ศาลเจ้ากะทู้',
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
        title: Text('ศาลเจ้ากะทู้'),
      ),
      body: GoogleMap(
          onMapCreated:_onMapCreated ,
          markers: _markers,
          initialCameraPosition:CameraPosition(
            target: LatLng(7.9160103,98.3428909),
            zoom: 15.0,
          ) ),
    );
  }


}
