import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class kMap_Drink2 extends StatefulWidget {
  @override
  _kMap_Drink2State createState() => _kMap_Drink2State();
}

class _kMap_Drink2State extends State<kMap_Drink2> {

  Set<Marker> _markers = {};

  void _onMapCreated(GoogleMapController controller){
    setState(() {
      _markers.add(
        Marker(markerId:MarkerId('id-1'),
            position:LatLng(7.8933788,98.2954794),
            infoWindow: InfoWindow(
                title: 'อิลลูชั่น',
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
        title: Text('อิลลูชั่น'),
      ),
      body: GoogleMap(
          onMapCreated:_onMapCreated ,
          markers: _markers,
          initialCameraPosition:CameraPosition(
            target: LatLng(7.8933788,98.2954794),
            zoom: 15.0,
          ) ),
    );
  }


}
