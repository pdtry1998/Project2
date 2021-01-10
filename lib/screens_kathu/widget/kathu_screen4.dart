import 'package:flutter/material.dart';
import 'package:project/screens_kathu/information_kathu/drink/kdrink1.dart';
import 'package:project/screens_kathu/information_kathu/drink/kdrink2.dart';
import 'package:project/screens_kathu/information_kathu/drink/kdrink3.dart';
import 'package:project/screens_mueang/information_mueange/drink/drink1.dart';
import 'package:project/screens_mueang/information_mueange/drink/drink2.dart';
import 'package:project/screens_mueang/information_mueange/drink/drink3.dart';
import 'package:project/screens_mueang/information_mueange/drink/drink4.dart';



class KathuDrink extends StatelessWidget {
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
                MaterialPageRoute(builder: (context) => KathuDrink1()),
              );
            },
            child: drink('assets/images_kathu/2.4.1.1.jpg', 'ถนนบางลา', 'ไทเกอร์',
              'ผับขนาดใหญ่ที่ตั้งอยู่บนถนนบางลา', ),
            // Photo from https://unsplash.com/photos/2d4lAQAlbDA
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => KathuDrink2()),
              );
            },
            child: drink('assets/images_kathu/2.4.2.1.jpg', '\ถนนบางลา', 'อิลลูชั่น  ',
              'เป็นอีกหนึ่งสถานบันเทิงที่มีชื่อเสียง',
            ),
            // Photo from https://unsplash.com/photos/wHUFmZRMpLc
          ),
          GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => KathuDrink3()),
                );
              },
              child: drink('assets/images_kathu/2.4.3.2.jpg', '\กะทู้', 'ฮัวพานมินิ กะทู้',
                'เป็นร้านอาหาร เป็นร้านเหล้า กึ่งผับกึ่งบาร์', )
            // Photo from https://unsplash.com/photos/561igiTyvSk
          ),
          // GestureDetector(
          //   onTap: () {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(builder: (context) => Drink4()),
          //     );
          //   },
          //   child: drink('assets/images_mueange/4.4.1.jpg', '\ถนนรัษฎา', 'เดอะ ไลบรารี่  ', 'กลางคืนเป็น ร้านเหล้า กลางวันเป็นร้านข้าว ่',
          //   ),
          //   // Photo from https://unsplash.com/photos/wHUFmZRMpLc
          // ),
        ],
      ),
    );
  }

  Widget drink(
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