import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:project/screens_mueang/information_mueange/place/widget/button1.dart';
import 'package:project/screens_mueang/information_mueange/place/widget/button2.dart';
import 'package:project/screens_mueang/information_mueange/place/widget/button3.dart';
//import 'package:testtttttt/HOTELS/Hol.dart';
//import 'package:testtttttt/HOTELS/widget_Akureyri/map_comment.dart';
//import 'package:testtttttt/widgets/BookNow.dart';



class Places3 extends StatefulWidget {
  Places3({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _Places3State createState() => _Places3State();
}

class _Places3State extends State<Places3> {
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
                            AssetImage('assets/images_mueange/1.3.1.jpg'),
                            // Photo from https://unsplash.com/photos/2d4lAQAlbDA
                            AssetImage('assets/images_mueange/1.3.2.jpg'),
                            // Photo from https://unsplash.com/photos/FqqiAvJejto
                            AssetImage('assets/images_mueange/1.3.3.jpg'),
                            // Photo from https://unsplash.com/photos/_-JR5TxKNSo
                            AssetImage('assets/images_mueange/1.3.4.jpg'),
                            // Photo from https://unsplash.com/photos/K0rvMa1Y18A
                            AssetImage('assets/images_mueange/1.3.5.jpg'),
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
                              'พิพิธภัณฑ์ภูเก็ตไทยหัว ',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,

                              ),
                              //style: TextStyle(fontFamily: 'ConcertOne-Regular'),
                            ),
                            Text('\ 28 ถนน กระบี่ ตำบลตลาดเหนือ อำเภอเมือง  ' ,
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
            amenities('assets/images_mueange/heart.png', 'assets/images_mueange/call.png', 'assets/images_mueange/wifi.png','assets/images_mueange/car.png',
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
            about_place('         พิพิธภัณฑ์ภูเก็ตไทยหัว เป็นพิพิธภัณฑ์ที่ตั้งขึ้นเพื่อระลึกถึงประวัติและที่มาของชาวจีน ที่อพยพและย้ายถิ่นเข้ามาอยู่จังหวัดภูเก็ต ให้ลูกหลานคนจีน คนไทย รู้จักที่มาของบรรพชนอย่างถูกต้อง เพื่อจะได้ตระหนักถึงตัวตนที่แท้จริง  และเพื่อให้นักท่องเที่ยวและชาวต่างประเทศ ได้มีโอกาสศึกษาและเข้าใจความเป็นอยู่ พฤติกรรม และอุปนิสัยของชาวภูเก็ต  รวมทั้งเพื่อเป็นศูนย์รวมของการศึกษา ค้นคว้าข้อมูลที่เกี่ยวข้องกับประวัติศาสตร์ของจังหวัดภูเก็ต '),
            about_place2('เวลาเปิด-ปิด :'),
            about_place('         เปิดทุกวัน เวลา 09.00 - 17.00 น.รอบการบรรยายช'
                '่วงเช้า เวลา  09.30 - 10.30 น. และ 11.00 - 12.00 น.ช่วงบ่าย เวลา  13.30 - 14.30 น. และ 15.30 - 16.30 น.'),
            about_place2('โทรศัพท์ :'),
            about_place('         076-211 224'),
            about_place2('ค่าเข้าชม :'),
            about_place('         ผู้ใหญ่ 50 บาท นักเรียน/นักศึกษา 25 บาท'
                '  ยกเว้นค่าเข้าชมนักบวช พระภิกษุ สามเณรผู้ทุพพลภาพมัคคุเทศก์ แสดงบัตรประจำตัวมัคคุเทศก์ที่ออกโดยกระทรวงการท่องเที่ยวและกีฬา'),

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
            Button_3(),
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
              style: TextStyle(fontSize: 18,
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
        padding: EdgeInsets.only(top: 10,left: 14, right: 14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              description,
              style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold
                //fontFamily: 'ConcertOne-Regular'
              ),
            ),
          ],
        ));
  }
}