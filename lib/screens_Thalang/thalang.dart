import 'package:flutter/material.dart';
import 'package:project/screens_Thalang/widget/thalang_screen1.dart';
import 'package:project/screens_Thalang/widget/thalang_screen2.dart';
import 'package:project/screens_Thalang/widget/thalang_screen3.dart';
import 'package:project/screens_mueang/widget/mueange_screen1.dart';
import 'package:project/screens_mueang/widget/mueange_screen2.dart';
import 'package:project/screens_mueang/widget/mueange_screen3.dart';
import 'package:project/screens_mueang/widget/mueange_screen4.dart';

class Thalang extends StatefulWidget {
  Thalang({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _ThalangState createState() => _ThalangState();
}

class _ThalangState extends State<Thalang> {
  @override


  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 25, right: 14, top: 30, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      RichText(
                        text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                                text: 'อำเภอ',
                                style:
                                TextStyle(color: Colors.black, fontSize: 30)),
                            TextSpan(
                                text: 'ถลาง',
                                style: TextStyle(
                                    fontFamily: 'ConcertOne-Regular',
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 40)),
                          ],
                        ),
                      ),
                      //SizedBox(height: 5),
                      Text('Thalang Phuket,Thailand.',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 40,
                    child: ClipOval(
                        child: Image.asset(
                          'assets/images_thalang/thalang.jpg',
                          // Photo from https://unsplash.com/photos/QXevDflbl8A
                          fit: BoxFit.cover,
                          width: 88.0,
                          height: 88.0,
                        )),
                  ),
                ],
              ),
            ),
            // HotelList(),
            Padding(
              padding: EdgeInsets.only(top: 10, left: 30, ),
              child: Text(
                'สถานที่ท่องเที่ยว',
                style: TextStyle(
                    fontFamily: 'ConcertOne-Regular',
                    fontWeight: FontWeight.bold,
                    fontSize: 23),
              ),
            ),

            ThalangPlace(),

            Padding(
              padding: EdgeInsets.only(top: 5, left: 30, ),
              child: Text(
                'ร้านอาหาร',
                style: TextStyle(
                    fontFamily: 'ConcertOne-Regular',
                    fontWeight: FontWeight.bold,
                    fontSize: 23),
              ),
            ),

            ThalangFood(),

            Padding(
              padding: EdgeInsets.only(top: 10, left: 30, ),
              child: Text(
                'ทั่วไป',
                style: TextStyle(
                    fontFamily: 'ConcertOne-Regular',
                    fontWeight: FontWeight.bold,
                    fontSize: 23),
              ),
            ),

            ThalangMarket(),

            // Padding(
            //   padding: EdgeInsets.only(top: 10, left: 30, ),
            //   child: Text(
            //     'ที่เที่ยวกลางคืน',
            //     style: TextStyle(
            //         fontFamily: 'ConcertOne-Regular',
            //         fontWeight: FontWeight.bold,
            //         fontSize: 23),
            //   ),
            // ),
            //
            // MueangeDrink(),

            // RecommendedPlace(),
          ],
        ));
  }
}
