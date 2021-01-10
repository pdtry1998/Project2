import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class tMap_Food3 extends StatefulWidget {
  @override
  _tMap_Food3State createState() => _tMap_Food3State();
}

class _tMap_Food3State extends State<tMap_Food3> {

  Set<Marker> _markers = {};

  void _onMapCreated(GoogleMapController controller){
    setState(() {
      _markers.add(
        Marker(markerId:MarkerId('id-1'),
            position:LatLng(7.9798873,98.3312154),
            infoWindow: InfoWindow(
                title: 'กินกับอี๋  ',
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
        title: Text('กินกับอี๋  '),
      ),
      body: GoogleMap(
          onMapCreated:_onMapCreated ,
          markers: _markers,
          initialCameraPosition:CameraPosition(
            target: LatLng(7.9798873,98.3312154),
            zoom: 15.0,
          ) ),
    );
  }


}
