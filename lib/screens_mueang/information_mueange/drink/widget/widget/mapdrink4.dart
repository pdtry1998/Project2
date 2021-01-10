import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';



class MapDrink4 extends StatefulWidget {
  @override
  _MapDrink4State createState() => _MapDrink4State();
}

class _MapDrink4State extends State<MapDrink4> {
  Set<Marker> _markers = {};

  void _onMapCreated(GoogleMapController controller){
    setState(() {
      _markers.add(
        Marker(markerId:MarkerId('id-1'),
            position:LatLng(7.8832287, 98.3871777),
            infoWindow: InfoWindow(
                title: 'The Library Phuket ',
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
        title: Text('The Library Phuket'),
      ),
      body: GoogleMap(
          onMapCreated:_onMapCreated ,
          markers: _markers,
          initialCameraPosition:CameraPosition(
            target: LatLng(7.8832287, 98.3871777),
            zoom: 15.0,
          ) ),
    );
  }
}
