import 'package:flutter/material.dart';
import 'package:project/screens_mueang/information_mueange/food/food1.dart';
import 'package:project/screens_mueang/information_mueange/food/food2.dart';
import 'package:project/screens_mueang/information_mueange/food/food3.dart';
import 'package:project/screens_mueang/information_mueange/food/food4.dart';


class MueangeFood extends StatelessWidget {
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
                MaterialPageRoute(builder: (context) => Food1()),
              );
            },
            child: foods('assets/images_mueange/1.jpg', '\ถนนดีบุก', 'เย็นตาโฟสามพี่น้อง',
              'บะหมี่ระดับตำนานภูเก็ต สูตรเด็ดต้องลอง', ),
            // Photo from https://unsplash.com/photos/2d4lAQAlbDA
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Food2()),
              );
            },
            child: foods('assets/images_mueange/2.2.1.jpg', '\ถนนตะกั่วป่า', 'หมี่สามสาว',
              'สารพัดเมนูเส้นส่งต่อมานานกว่า 50 ปี ',
            ),
            // Photo from https://unsplash.com/photos/wHUFmZRMpLc
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Food3()),
              );
            },
              child: foods('assets/images_mueange/2.3.1.jpg', '\ถนนกระ', 'ร้านข้าวแกงกระหรี่ฝ่าน',
                'ความเด็ดของรสชาติที่ยาวนานกว่า 100 ปี ', )
            // Photo from https://unsplash.com/photos/561igiTyvSk
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Food4()),
              );
            },
            child: foods('assets/images_mueange/2.4.1.JPG', '\ถนนกระ', 'โกลา หมี่ฮกเกี้ยน', 'การกลับมาหมี่ผัดฮกเกี้ยนแบบฉบับภูเก็ต',
            ),
            // Photo from https://unsplash.com/photos/wHUFmZRMpLc
          ),
        ],
      ),
    );
  }

  Widget foods(
      String imageurl,
      String road,
      String name,
      String place,
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