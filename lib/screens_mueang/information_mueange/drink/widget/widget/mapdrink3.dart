import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';



class MapDrink3 extends StatefulWidget {
  @override
  _MapDrink3State createState() => _MapDrink3State();
}

class _MapDrink3State extends State<MapDrink3> {
  Set<Marker> _markers = {};

  void _onMapCreated(GoogleMapController controller){
    setState(() {
      _markers.add(
        Marker(markerId:MarkerId('id-1'),
            position:LatLng(7.8843772, 98.3907043),
            infoWindow: InfoWindow(
                title: 'เสวนา',
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
        title: Text('เสวนา'),
      ),
      body: GoogleMap(
          onMapCreated:_onMapCreated ,
          markers: _markers,
          initialCameraPosition:CameraPosition(
            target: LatLng(7.8843772, 98.3907043),
            zoom: 15.0,
          ) ),
    );
  }
}
