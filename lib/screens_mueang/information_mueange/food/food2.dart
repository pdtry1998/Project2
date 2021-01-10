import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:project/screens_mueang/information_mueange/food/widget/buttonfood2.dart';
import 'package:project/screens_mueang/information_mueange/place/widget/button1.dart';
import 'package:project/screens_mueang/information_mueange/place/widget/button2.dart';

class Food2 extends StatefulWidget {
  Food2({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _Food2State createState() => _Food2State();
}

class _Food2State extends State<Food2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: <Widget>[
        Stack(
          children: <Widget>[
            SizedBox(
                height: 300.0,
                child: Stack(
                  children: <Widget>[
                    Carousel(
                      images: [
                        AssetImage('assets/images_mueange/2.2.1.jpg'),
                        // Photo from https://unsplash.com/photos/2d4lAQAlbDA
                        AssetImage('assets/images_mueange/2.2.2.jpg'),
                        // Photo from https://unsplash.com/photos/FqqiAvJejto
                        AssetImage('assets/images_mueange/2.2.3.jpg'),
                        // Photo from https://unsplash.com/photos/_-JR5TxKNSo
                        AssetImage('assets/images_mueange/2.2.4.jpg'),
                        // Photo from https://unsplash.com/photos/K0rvMa1Y18A
                        AssetImage('assets/images_mueange/2.2.5.jpg'),
                        // Photo from https://unsplash.com/photos/I_QC1JICzA0
                      ],
                      dotSize: 4.0,
                      dotSpacing: 15.0,
                      autoplay: false,
                      dotColor: Colors.white,
                      indicatorBgPadding: 50.0,
                      dotBgColor: Colors.transparent,
                      borderRadius: false,
                      moveIndicatorFromBottom: 200.0,
                      noRadiusForIndicator: true,
                    ),
                  ],
                )),
            Padding(
              padding: EdgeInsets.only(top: 270, left: 20, right: 20),
              child: Container(
                  height: 90.0,
                  width: MediaQuery.of(context).size.width - 24.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 2.0,
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 2.0)
                      ]),
                  child: Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'หมี่สามสาว',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                          ),
                          //style: TextStyle(fontFamily: 'ConcertOne-Regular'),
                        ),
                        Text(
                          '\ถ.ตะกั่วป่า ต.ตลาดเหนือ อ.เมือง เยื้องศุภาลัยวิสต้า  ',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 13.0,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 13.0,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 13.0,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 13.0,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 13.0,
                            ),
                          ],
                        )
                      ],
                    ),
                  )),
            ),
            AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(top: 15, bottom: 15, left: 14),
          // child: Text(
          //   'เกี่ยวกับ',
          //   style: TextStyle(
          //       fontSize: 15.0,
          //       fontWeight: FontWeight.bold,
          //       fontFamily: 'ConcertOne-Regular'),
          // ),
        ),
        amenities(
          'assets/images_mueange/heart.png',
          'assets/images_mueange/call.png',
          'assets/images_mueange/wifi.png',
          'assets/images_mueange/car.png',
        ),
        Padding(
          padding: EdgeInsets.only(top: 20, bottom: 20, left: 14),
          child: Text(
            'เกี่ยวกับ',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'ConcertOne-Regular'),
          ),
        ),
        about_place(
            '        ร้าน “หมี่สามสาว” ภูเก็ต ย้ายที่ขายมาแล้ว 3 ครั้ง ขายมานานกว่า 50 ปี เมนูเด็ดคือ “ผัดไทย” ใส่กุ้งทะเลตัวเล็กไม่เหมือนใคร ซอสผัดไทยมีรสชาติเผ็ดนิด ๆ ผัดจานต่อจานทุกเมนู และใช้เตาถ่านในการทำเท่านั้น ร้านไม่เล็กไม่ใหญ่ บรรยากาศสบายๆทส่วนชิกเนเจอร์ที่ขาดไม่ได้ก็คือเตาถ่านที่ตั้งอยู่หน้าร้าน ที่ร้านมีหลากหลายเมนูให้เลือกเลยไม่ว่าจะเป็นอาหารตามสั่งและข้าวราดแกง แต่ทีเด็ดที่ใครมาก็ต้องสั่งคือ “ผัดไทย” (ราคา 40 บาท) เส้นจันท์ที่ได้กลิ่นหอม ๆ จากการผัดด้วยเตาถ่าน รสชาติเข้มข้นด้วยซอสผัดไทยที่อาอี๋ทำเอง ได้รสชาติเผ็ดนิด ๆ แต่ถ้าใครไม่กินเผ็ดก็สามารถสั่งเผ็ดน้อยได้นะคะ อาอี๋จัดให้ได้ค่ะ ที่พิเศษไม่เหมือนใครอีกอย่างก็คือกุ้งทะเลตัวเล็ก ๆ แกะเปลือกให้เรียบร้อย เป็นสิ่งที่ทำให้ผัดไทยของที่นี่แตกต่างจากที่อื่นนั้นเอง '),
        about_place2('เวลาเปิด-ปิด :'),
        about_place('         10:00 - 15:00 น. '),
        about_place2('โทรศัพท์ :'),
        about_place(
            '          -'),
        Padding(
          padding: EdgeInsets.only(top: 20, bottom: 5, left: 14),
          child: Text(
            'เส้นทางและรีวิว',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'ConcertOne-Regular'),
          ),
        ),
        ButtonFood2(),
      ],
    ));
  }

  Widget amenities(
    String url1,
    String url2,
    String url3,
    String url4,
  ) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Container(
            width: 55,
            height: 55,
            padding: EdgeInsets.only(left: 10, top: 10, right: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 1.0),
                      color: Colors.grey.withOpacity(0.9),
                      spreadRadius: 0.2)
                ]),
            child: Column(
              children: <Widget>[
                Image.asset(
                  url1,
                  fit: BoxFit.contain,
                  height: 40.0,
                  width: 50.0,
                ),
              ],
            )),
        Container(
            width: 55,
            height: 55,
            padding: EdgeInsets.only(left: 10, top: 10, right: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 1.0),
                      color: Colors.grey.withOpacity(0.9),
                      spreadRadius: 0.2)
                ]),
            child: Column(
              children: <Widget>[
                Image.asset(
                  url2,
                  fit: BoxFit.contain,
                  height: 30.0,
                  width: 40.0,
                ),
              ],
            )),
        Container(
            width: 55,
            height: 55,
            padding: EdgeInsets.only(left: 10, top: 10, right: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 1.0),
                      color: Colors.grey.withOpacity(0.9),
                      spreadRadius: 0.2)
                ]),
            child: Column(
              children: <Widget>[
                Image.asset(
                  url3,
                  fit: BoxFit.contain,
                  height: 30.0,
                  width: 40.0,
                ),
              ],
            )),
        Container(
            width: 55,
            height: 55,
            padding: EdgeInsets.only(left: 10, top: 10, right: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 1.0),
                      color: Colors.grey.withOpacity(0.9),
                      spreadRadius: 0.2)
                ]),
            child: Column(
              children: <Widget>[
                Image.asset(
                  url4,
                  fit: BoxFit.contain,
                  height: 35.0,
                  width: 40.0,
                ),
              ],
            )),
      ],
    );
  }

  Widget about_place(
    String description,
  ) {
    return Padding(
        padding: EdgeInsets.only(left: 14, right: 14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              description,
              style: TextStyle(
                fontSize: 18,
                //fontFamily: 'ConcertOne-Regular'
              ),
            ),
          ],
        ));
  }

  Widget about_place2(
    String description,
  ) {
    return Padding(
        padding: EdgeInsets.only(top: 10, left: 14, right: 14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              description,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold
                  //fontFamily: 'ConcertOne-Regular'
                  ),
            ),
          ],
        ));
  }
}
