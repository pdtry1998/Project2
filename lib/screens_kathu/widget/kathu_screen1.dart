import 'package:flutter/material.dart';
import 'package:project/screens_kathu/information_kathu/place/kplace1.dart';
import 'package:project/screens_kathu/information_kathu/place/kplace2.dart';
import 'package:project/screens_kathu/information_kathu/place/kplace3.dart';
import 'package:project/screens_kathu/information_kathu/place/kplace4.dart';

import 'package:project/screens_mueang/information_mueange/place/place2.dart';
import 'package:project/screens_mueang/information_mueange/place/place3.dart';
import 'package:project/screens_mueang/information_mueange/place/place4.dart';



class KathuPlace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 220,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => KathuPlace1()),
              );
            },
            child: places('assets/images_kathu/2.1.1.jpeg', 'กะทู้-เกาะแก้ว', 'พิพิธภัณฑ์เหมืองแร่กะทู้',
              'ภายในมีการจัดนิทรรศการแบบกึ่งมีชีวิต', ),
            // Photo from https://unsplash.com/photos/2d4lAQAlbDA
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => KathuPlace2()),
              );
            },
            child: places('assets/images_kathu/2.2.1.jpg', 'ถ.พระบารมี', 'วัดสุวรรณคีรีวงก์',
              'วัดที่สวยงามและเงียบสงบมาก ย่านป่าตอง ',
            ),
            // Photo from https://unsplash.com/photos/wHUFmZRMpLc
          ),
          GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => KathuPlace3()),
                );
              },
              child: places('assets/images_kathu/2.3.1.jpg', 'ถ.พระบารมี', 'ศาลเจ้าปุนเถ่ากง',
                'ศาลเจ้าพ่อเสือ หรือ ศาลเจ้าฮกแซ่เก้ง', )
            // Photo from https://unsplash.com/photos/561igiTyvSk
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => KathuPlace4()),
              );
            },
            child: places('assets/images_kathu/2.4.1.jpg', 'ตำบลกะทู้', 'ศาลเจ้ากะทู้', 'อ๊ามที่ทำให้เกิดประเพณีถือศิลกินผัก',
            ),
            // Photo from https://unsplash.com/photos/wHUFmZRMpLc
          ),
        ],
      ),
    );
  }

  Widget places(
      String imageurl,
      String road,
      String name,
      String place,
      // int rating,
      // String lol,
      ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Card(
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Stack(
            children: <Widget>[
              Image.asset(
                imageurl,
                height: 200,
                width: 230,
                fit: BoxFit.cover,
              ),
              Positioned(
                top: 16,
                left: 140,
                child: Container(
                    height: 25.0,
                    width: 80.00,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3.0),
                        color: Color(0xff0F0F0F),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xff0F0F0F).withOpacity(0.3),
                          )
                        ]),
                    child: Center(
                      child: Text(
                        road,
                        style: TextStyle(color: Colors.white),
                      ),
                    )),
              )
            ],
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          elevation: 5,
          margin: EdgeInsets.all(10),
        ),
        Padding(
          padding: EdgeInsets.only(left: 14),
          child: Text(
            name,
            style: TextStyle(fontSize:18.0,fontFamily: 'ConcertOne-Regular',fontWeight: FontWeight.bold
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 14),
          child: Text(
            place,
            style: TextStyle(fontSize: 13,color: Colors.grey,fontStyle: FontStyle.italic),
          ),
        ),
        // Padding(
        //   padding: EdgeInsets.only(left: 14),
        //   child: Row(
        //     children: <Widget>[
        //       stars(rating, 1),
        //       stars(rating, 2),
        //       stars(rating, 3),
        //       stars(rating, 4),
        //       stars(rating, 5),
        //       Text(lol),
        //     ],
        //   ),
        // )
      ],
    );
  }

  stars(int rating, int index) {
    if (index <= rating) {
      return Icon(
        Icons.star,
        color: Colors.amber,
        size: 13.0,
      );
    } else {
      return Icon(Icons.star, color: Colors.grey, size: 13.0);
    }
  }
}