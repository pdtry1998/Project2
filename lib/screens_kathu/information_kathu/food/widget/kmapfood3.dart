import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class kMap_Food3 extends StatefulWidget {
  @override
  _kMap_Food3State createState() => _kMap_Food3State();
}

class _kMap_Food3State extends State<kMap_Food3> {

  Set<Marker> _markers = {};

  void _onMapCreated(GoogleMapController controller){
    setState(() {
      _markers.add(
        Marker(markerId:MarkerId('id-1'),
            position:LatLng(7.916368,98.3418865),
            infoWindow: InfoWindow(
                title: 'เดอะ คาเฟ่ หมูกระทะ',
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
        title: Text('เดอะ คาเฟ่ หมูกระทะ'),
      ),
      body: GoogleMap(
          onMapCreated:_onMapCreated ,
          markers: _markers,
          initialCameraPosition:CameraPosition(
            target: LatLng(7.916368,98.3418865),
            zoom: 15.0,
          ) ),
    );
  }


}
