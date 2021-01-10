import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';



class MapDrink1 extends StatefulWidget {
  @override
  _MapDrink1State createState() => _MapDrink1State();
}

class _MapDrink1State extends State<MapDrink1> {
  Set<Marker> _markers = {};

  void _onMapCreated(GoogleMapController controller){
    setState(() {
      _markers.add(
        Marker(markerId:MarkerId('id-1'),
            position:LatLng(7.8779311, 98.3887988),
            infoWindow: InfoWindow(
                title: 'ฮัวพาน',
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
        title: Text('ฮัวพาน'),
      ),
      body: GoogleMap(
          onMapCreated:_onMapCreated ,
          markers: _markers,
          initialCameraPosition:CameraPosition(
            target: LatLng(7.8779311, 98.3887988),
            zoom: 15.0,
          ) ),
    );
  }
}
