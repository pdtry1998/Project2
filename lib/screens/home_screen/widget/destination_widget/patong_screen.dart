import 'package:flutter/material.dart';
import 'package:project/screens/home_screen/widget/activity_model.dart';
import 'package:project/screens/home_screen/widget/destination_model.dart';

class PatongScreen extends StatefulWidget {
  final Destination destination;

  PatongScreen({this.destination});

  @override
  _PatongScreenState createState() => _PatongScreenState();
}

class _PatongScreenState extends State<PatongScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
           body: Column(
             children: <Widget>[
               Stack(
                 children: <Widget>[
                   Container(
                     height: MediaQuery.of(context).size.width,
                     decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      boxShadow: [
                        BoxShadow(
                           color: Colors.black26,
                           offset: Offset(0.0, 2.0),
                           blurRadius: 6.0,
                     ),
                  ],
                 ),
               child: ClipRRect(
                         borderRadius: BorderRadius.circular(30.0),
                         child: Image(
                           image: AssetImage(widget.destination.imageUrl),
                          fit: BoxFit.cover,
                    ),
                ),
             ),
            Padding(
                     padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 40.0),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: <Widget>[
                         IconButton(
                           icon: Icon(Icons.arrow_back),
                           iconSize: 30.0,
                           color: Colors.white,
                           onPressed: () => Navigator.pop(context),
                ),
                ],
                ),
                ),
                ],
                ),
                ],
                ),
                );
  }
}
