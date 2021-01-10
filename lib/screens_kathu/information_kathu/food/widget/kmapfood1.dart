import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class kMap_Food1 extends StatefulWidget {
  @override
  _kMap_Food1State createState() => _kMap_Food1State();
}

class _kMap_Food1State extends State<kMap_Food1> {

  Set<Marker> _markers = {};

  void _onMapCreated(GoogleMapController controller){
    setState(() {
      _markers.add(
        Marker(markerId:MarkerId('id-1'),
            position:LatLng(7.9120527,98.3456605),
            infoWindow: InfoWindow(
                title: 'หมี่โป๋เบี๋ยน (หมี่จี้สุ)',
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
        title: Text('หมี่โป๋เบี๋ยน (หมี่จี้สุ)'),
      ),
      body: GoogleMap(
          onMapCreated:_onMapCreated ,
          markers: _markers,
          initialCameraPosition:CameraPosition(
            target: LatLng(7.9120527,98.3456605),
            zoom: 15.0,
          ) ),
    );
  }


}
