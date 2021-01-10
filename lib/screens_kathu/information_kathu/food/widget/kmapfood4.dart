import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class kMap_Food4 extends StatefulWidget {
  @override
  _kMap_Food4State createState() => _kMap_Food4State();
}

class _kMap_Food4State extends State<kMap_Food4> {

  Set<Marker> _markers = {};

  void _onMapCreated(GoogleMapController controller){
    setState(() {
      _markers.add(
        Marker(markerId:MarkerId('id-1'),
            position:LatLng(7.908309,98.3320173),
            infoWindow: InfoWindow(
                title: 'ขาหมูโบราณ กะทู้',
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
        title: Text('ขาหมูโบราณ กะทู้'),
      ),
      body: GoogleMap(
          onMapCreated:_onMapCreated ,
          markers: _markers,
          initialCameraPosition:CameraPosition(
            target: LatLng(7.908309,98.3320173),
            zoom: 15.0,
          ) ),
    );
  }


}
