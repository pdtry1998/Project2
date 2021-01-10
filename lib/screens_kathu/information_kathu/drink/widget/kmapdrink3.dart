import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class kMap_Drink3 extends StatefulWidget {
  @override
  _kMap_Drink3State createState() => _kMap_Drink3State();
}

class _kMap_Drink3State extends State<kMap_Drink3> {

  Set<Marker> _markers = {};

  void _onMapCreated(GoogleMapController controller){
    setState(() {
      _markers.add(
        Marker(markerId:MarkerId('id-1'),
            position:LatLng(7.9061199,98.3483232),
            infoWindow: InfoWindow(
                title: 'ฮัวพานมินิ',
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
        title: Text('ฮัวพานมินิ'),
      ),
      body: GoogleMap(
          onMapCreated:_onMapCreated ,
          markers: _markers,
          initialCameraPosition:CameraPosition(
            target: LatLng(7.9061199,98.3483232),
            zoom: 15.0,
          ) ),
    );
  }


}
