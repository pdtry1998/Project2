import 'package:flutter/material.dart';
import 'package:project/screens_kathu/widget/kathu_screen1.dart';
import 'package:project/screens_kathu/widget/kathu_screen2.dart';
import 'package:project/screens_kathu/widget/kathu_screen3.dart';
import 'package:project/screens_kathu/widget/kathu_screen4.dart';


class Kathu extends StatefulWidget {
  Kathu({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _KathuState createState() => _KathuState();
}

class _KathuState extends State<Kathu> {
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
                                text: 'กะทู้',
                                style: TextStyle(
                                    fontFamily: 'ConcertOne-Regular',
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 40)),
                          ],
                        ),
                      ),
                      //SizedBox(height: 5),
                      Text('Kathu Phuket,Thailand.',
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
                          'assets/images_kathu/kathu.jpg',
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

            KathuPlace(),

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

            KathuFood(),

            Padding(
              padding: EdgeInsets.only(top: 10, left: 30, ),
              child: Text(
                'ถนนคนเดิน',
                style: TextStyle(
                    fontFamily: 'ConcertOne-Regular',
                    fontWeight: FontWeight.bold,
                    fontSize: 23),
              ),
            ),

            KathuMarket(),

            Padding(
              padding: EdgeInsets.only(top: 10, left: 30, ),
              child: Text(
                'ที่เที่ยวกลางคืน',
                style: TextStyle(
                    fontFamily: 'ConcertOne-Regular',
                    fontWeight: FontWeight.bold,
                    fontSize: 23),
              ),
            ),

            KathuDrink(),

            // RecommendedPlace(),
          ],
        ));
  }
}
