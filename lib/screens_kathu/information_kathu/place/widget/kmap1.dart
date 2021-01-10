import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class kMap_1 extends StatefulWidget {
  @override
  _kMap_1State createState() => _kMap_1State();
}

class _kMap_1State extends State<kMap_1> {

  Set<Marker> _markers = {};

  void _onMapCreated(GoogleMapController controller){
    setState(() {
      _markers.add(
        Marker(markerId:MarkerId('id-1'),
            position:LatLng(7.9346971, 98.3478894),
            infoWindow: InfoWindow(
                title: 'พิพิธภัณฑ์เหมืองแร่กะทู้',
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
        title: Text('พิพิธภัณฑ์เหมืองแร่กะทู้'),
      ),
      body: GoogleMap(
          onMapCreated:_onMapCreated ,
          markers: _markers,
          initialCameraPosition:CameraPosition(
            target: LatLng(7.9346971, 98.3478894),
            zoom: 15.0,
          ) ),
    );
  }


}
