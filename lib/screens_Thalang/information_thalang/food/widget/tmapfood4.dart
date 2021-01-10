import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class tMap_Food4 extends StatefulWidget {
  @override
  _tMap_Food4State createState() => _tMap_Food4State();
}

class _tMap_Food4State extends State<tMap_Food4> {

  Set<Marker> _markers = {};

  void _onMapCreated(GoogleMapController controller){
    setState(() {
      _markers.add(
        Marker(markerId:MarkerId('id-1'),
            position:LatLng(7.9846352,98.320336),
            infoWindow: InfoWindow(
                title: 'หอยแซ๊บซีฟู๊ด',
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
        title: Text('หอยแซ๊บซีฟู๊ด'),
      ),
      body: GoogleMap(
          onMapCreated:_onMapCreated ,
          markers: _markers,
          initialCameraPosition:CameraPosition(
            target: LatLng(7.9846352,98.320336),
            zoom: 15.0,
          ) ),
    );
  }


}
