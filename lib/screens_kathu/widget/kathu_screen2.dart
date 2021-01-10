import 'package:flutter/material.dart';
import 'package:project/screens_kathu/information_kathu/food/kfood1.dart';
import 'package:project/screens_kathu/information_kathu/food/kfood2.dart';
import 'package:project/screens_kathu/information_kathu/food/kfood3.dart';
import 'package:project/screens_kathu/information_kathu/food/kfood4.dart';
import 'package:project/screens_kathu/kathu.dart';
import 'package:project/screens_mueang/information_mueange/food/food1.dart';
import 'package:project/screens_mueang/information_mueange/food/food2.dart';
import 'package:project/screens_mueang/information_mueange/food/food3.dart';
import 'package:project/screens_mueang/information_mueange/food/food4.dart';


class KathuFood extends StatelessWidget {
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
                MaterialPageRoute(builder: (context) => KathuFood1()),
              );
            },
            child: foods('assets/images_kathu/2.2.1.1.jpg', '\กะทู้', 'หมี่โป๋เบี๋ยน (หมี่จี้สุ)',
              'คนรู้จักกันดีในนาม"หมี่โป๋เบี๋ยน 20 ปี ', ),
            // Photo from https://unsplash.com/photos/2d4lAQAlbDA
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => KathuFood2()),
              );
            },
            child: foods('assets/images_kathu/2.2.2.1.jpg', '\วิชิตสงคราม', 'ครัวจงจิต บะหมี่ฮกเกี้ยน',
              'มีเมนูให้เลือกมากมาย ต้องมาลิ้มลองดู ',
            ),
            // Photo from https://unsplash.com/photos/wHUFmZRMpLc
          ),
          GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => KathuFood3()),
                );
              },
              child: foods('assets/images_kathu/2.2.3.1.jpg', '\หลังอ๊ามกะทู้', 'เดอะ คาเฟ่ หมูกระทะ',
                'มีหลายชุดให้เลือกทาน ต้องมาลอง', )
            // Photo from https://unsplash.com/photos/561igiTyvSk
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => KathuFood4()),
              );
            },
            child: foods('assets/images_kathu/2.2.4.1.jpg', '\วิชิตสงคราม', 'ขาหมูโบราณ กะทู้', 'ตำนานอร่อยเปิดมากว่า 22 ปีที่ภูเก็ต',
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