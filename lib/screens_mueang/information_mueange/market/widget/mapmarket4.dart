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
            position:LatLng(7.8800541, 98.3898262),
            infoWindow: InfoWindow(
                title: 'เย็นตาโฟสามพี่น้อง',
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
        title: Text('เย็นตาโฟสามพี่น้อง'),
      ),
      body: GoogleMap(
          onMapCreated:_onMapCreated ,
          markers: _markers,
          initialCameraPosition:CameraPosition(
            target: LatLng(7.8800541, 98.3898262),
            zoom: 15.0,
          ) ),
    );
  }
}
