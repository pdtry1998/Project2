import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class kMap_2 extends StatefulWidget {
  @override
  _kMap_2State createState() => _kMap_2State();
}

class _kMap_2State extends State<kMap_2> {

  Set<Marker> _markers = {};

  void _onMapCreated(GoogleMapController controller){
    setState(() {
      _markers.add(
        Marker(markerId:MarkerId('id-1'),
            position:LatLng(7.9021774,98.3099067),
            infoWindow: InfoWindow(
                title: 'วัดสุวรรณคีรีวงก์',
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
        title: Text('วัดสุวรรณคีรีวงก์'),
      ),
      body: GoogleMap(
          onMapCreated:_onMapCreated ,
          markers: _markers,
          initialCameraPosition:CameraPosition(
            target: LatLng(7.9021774,98.3099067),
            zoom: 15.0,
          ) ),
    );
  }


}
