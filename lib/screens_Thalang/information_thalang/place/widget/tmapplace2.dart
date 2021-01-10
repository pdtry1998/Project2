import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class tMap_Place2 extends StatefulWidget {
  @override
  _tMap_Place2State createState() => _tMap_Place2State();
}

class _tMap_Place2State extends State<tMap_Place2> {

  Set<Marker> _markers = {};

  void _onMapCreated(GoogleMapController controller){
    setState(() {
      _markers.add(
        Marker(markerId:MarkerId('id-1'),
            position:LatLng(7.9810301,98.3645554),
            infoWindow: InfoWindow(
                title: 'พิพิธภัณฑสถานแห่งชาติ',
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
        title: Text('พิพิธภัณฑสถานแห่งชาติ'),
      ),
      body: GoogleMap(
          onMapCreated:_onMapCreated ,
          markers: _markers,
          initialCameraPosition:CameraPosition(
            target: LatLng(7.9810301,98.3645554),
            zoom: 15.0,
          ) ),
    );
  }


}
