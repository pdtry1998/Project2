import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';



class MapMarket4 extends StatefulWidget {
  @override
  _MapMarket4State createState() => _MapMarket4State();
}

class _MapMarket4State extends State<MapMarket4> {
  Set<Marker> _markers = {};

  void _onMapCreated(GoogleMapController controller){
    setState(() {
      _markers.add(
        Marker(markerId:MarkerId('id-1'),
            position:LatLng(7.8805478, 98.3655259),
            infoWindow: InfoWindow(
                title: 'ตลาดนัดท้ายรถเจ้าฟ้า วาไรตี้',
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
        title: Text('ตลาดนัดท้ายรถเจ้าฟ้า วาไรตี้'),
      ),
      body: GoogleMap(
          onMapCreated:_onMapCreated ,
          markers: _markers,
          initialCameraPosition:CameraPosition(
            target: LatLng(7.8805478, 98.3655259),
            zoom: 15.0,
          ) ),
    );
  }
}
