import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class tMap_Place3 extends StatefulWidget {
  @override
  _tMap_Place3State createState() => _tMap_Place3State();
}

class _tMap_Place3State extends State<tMap_Place3> {

  Set<Marker> _markers = {};

  void _onMapCreated(GoogleMapController controller){
    setState(() {
      _markers.add(
        Marker(markerId:MarkerId('id-1'),
            position:LatLng(8.026374,98.3304761),
            infoWindow: InfoWindow(
                title: 'วัดพระนางสร้าง',
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
        title: Text('วัดพระนางสร้าง'),
      ),
      body: GoogleMap(
          onMapCreated:_onMapCreated ,
          markers: _markers,
          initialCameraPosition:CameraPosition(
            target: LatLng(8.026374,98.3304761),
            zoom: 15.0,
          ) ),
    );
  }


}
