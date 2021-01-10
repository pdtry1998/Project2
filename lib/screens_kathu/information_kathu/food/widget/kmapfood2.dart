import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class kMap_Food2 extends StatefulWidget {
  @override
  _kMap_Food2State createState() => _kMap_Food2State();
}

class _kMap_Food2State extends State<kMap_Food2> {

  Set<Marker> _markers = {};

  void _onMapCreated(GoogleMapController controller){
    setState(() {
      _markers.add(
        Marker(markerId:MarkerId('id-1'),
            position:LatLng(7.9160789,98.3454673),
            infoWindow: InfoWindow(
                title: 'ครัวจงจิต บะหมี่ฮกเกี้ยน',
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
        title: Text('ครัวจงจิต บะหมี่ฮกเกี้ยน'),
      ),
      body: GoogleMap(
          onMapCreated:_onMapCreated ,
          markers: _markers,
          initialCameraPosition:CameraPosition(
            target: LatLng(7.9160789,98.3454673),
            zoom: 15.0,
          ) ),
    );
  }


}
