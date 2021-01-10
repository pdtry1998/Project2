import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class tMap_Market1 extends StatefulWidget {
  @override
  _tMap_Market1State createState() => _tMap_Market1State();
}

class _tMap_Market1State extends State<tMap_Market1> {

  Set<Marker> _markers = {};

  void _onMapCreated(GoogleMapController controller){
    setState(() {
      _markers.add(
        Marker(markerId:MarkerId('id-1'),
            position:LatLng(8.2015689,98.2963457),
            infoWindow: InfoWindow(
                title: 'สะพานสารสิน',
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
        title: Text('สะพานสารสิน'),
      ),
      body: GoogleMap(
          onMapCreated:_onMapCreated ,
          markers: _markers,
          initialCameraPosition:CameraPosition(
            target: LatLng(8.2015689,98.2963457),
            zoom: 15.0,
          ) ),
    );
  }


}
