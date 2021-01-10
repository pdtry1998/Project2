import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class kMap_3 extends StatefulWidget {
  @override
  _kMap_3State createState() => _kMap_3State();
}

class _kMap_3State extends State<kMap_3> {

  Set<Marker> _markers = {};

  void _onMapCreated(GoogleMapController controller){
    setState(() {
      _markers.add(
        Marker(markerId:MarkerId('id-1'),
            position:LatLng(7.9032464,98.316817),
            infoWindow: InfoWindow(
                title: 'ศาลเจ้าปุนเถ่ากง',
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
        title: Text('ศาลเจ้าปุนเถ่ากง'),
      ),
      body: GoogleMap(
          onMapCreated:_onMapCreated ,
          markers: _markers,
          initialCameraPosition:CameraPosition(
            target: LatLng(7.9032464,98.316817),
            zoom: 15.0,
          ) ),
    );
  }


}
