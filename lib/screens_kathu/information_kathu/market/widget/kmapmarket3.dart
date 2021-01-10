import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class kMap_Market3 extends StatefulWidget {
  @override
  _kMap_Market3State createState() => _kMap_Market3State();
}

class _kMap_Market3State extends State<kMap_Market3> {

  Set<Marker> _markers = {};

  void _onMapCreated(GoogleMapController controller){
    setState(() {
      _markers.add(
        Marker(markerId:MarkerId('id-1'),
            position:LatLng(7.9113494,98.3334706),
            infoWindow: InfoWindow(
                title: 'ตลาดสดกะทู้',
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
        title: Text('ตลาดสดกะทู้'),
      ),
      body: GoogleMap(
          onMapCreated:_onMapCreated ,
          markers: _markers,
          initialCameraPosition:CameraPosition(
            target: LatLng(7.9113494,98.3334706),
            zoom: 15.0,
          ) ),
    );
  }


}
