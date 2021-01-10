import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class tMap_Place4 extends StatefulWidget {
  @override
  _tMap_Place4State createState() => _tMap_Place4State();
}

class _tMap_Place4State extends State<tMap_Place4> {

  Set<Marker> _markers = {};

  void _onMapCreated(GoogleMapController controller){
    setState(() {
      _markers.add(
        Marker(markerId:MarkerId('id-1'),
            position:LatLng(8.0053719,98.2720609),
            infoWindow: InfoWindow(
                title: 'หาดบางเทา',
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
        title: Text('หาดบางเทา'),
      ),
      body: GoogleMap(
          onMapCreated:_onMapCreated ,
          markers: _markers,
          initialCameraPosition:CameraPosition(
            target: LatLng(8.0053719,98.2720609),
            zoom: 15.0,
          ) ),
    );
  }


}
