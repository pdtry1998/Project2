import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:project/screens_kathu/information_kathu/food/widget/kbuttonfood2.dart';
import 'package:project/screens_kathu/information_kathu/place/widget/kbutton2.dart';
import 'package:project/screens_kathu/information_kathu/place/widget/kbutton3.dart';
import 'package:project/screens_kathu/information_kathu/place/widget/kbutton4.dart';


class KathuFood2 extends StatefulWidget {
  KathuFood2({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _KathuFood2State createState() => _KathuFood2State();
}

class _KathuFood2State extends State<KathuFood2> {
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
                            AssetImage('assets/images_kathu/2.2.2.1.jpg'),
                            // Photo from https://unsplash.com/photos/2d4lAQAlbDA
                            AssetImage('assets/images_kathu/2.2.2.2.jpg'),
                            // Photo from https://unsplash.com/photos/FqqiAvJejto
                            AssetImage('assets/images_kathu/2.2.2.3.jpg'),
                            // Photo from https://unsplash.com/photos/_-JR5TxKNSo
                            AssetImage('assets/images_kathu/2.2.2.4.jpg'),
                            // Photo from https://unsplash.com/photos/K0rvMa1Y18A
                            AssetImage('assets/images_kathu/2.2.2.5.jpg'),
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
                              'ครัวจงจิต บะหมี่ฮกเกี้ยน',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,

                              ),
                              //style: TextStyle(fontFamily: 'ConcertOne-Regular'),
                            ),
                            Text('\9/1 หมู่ ที่ 4 ถ วิชิต สงคราม ร้านอยู่ซ้ายก่อนถึงศาลเจ้ากะทู้ ' ,
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
            about_place('        จี้โง้ย หรือ คุณนงนุช จงจิต เจ้าของรานครัวจงจิต เล่าว่า จี้โง้ยเป็นคนกะทู้ ก่อนจะเปิดร้านครัวจงจิตนั้นเคยทำงานเป็นกุ๊กครัวไทยในโรงแรมมาก่อน ทำอาหารไทยและอาหารพื้นเมืองเป็นหลัก ต่อมาได้เปิดร้านอาหารของตัวเองอยู่ริมหาดป่าตอง แต่เจอเหตุการณ์สึนามิทำให้ต้องปิดร้านไป จนกระทั่งได้มาเปิดร้านครัวจงจิตที่ตรงข้ามบ้านของตัวเองแถวในทู ใกล้ๆ ศาลเจ้ากะทู้ตรงนี้ ร้านครัวจงจิตเปิดมาได้ 4 ปีแล้ว แรกเริ่มเดิมทีขายหมี่ฮกเกี้ยนกับขนมจีน แล้วค่อยๆ เพิ่มอาหารตามสั่ง จนหยุดขายขนมจีนเหลือเพียงอาหารตามสั่งอาหารพื้นเมืองภูเก็ตทั่วไป และยังขายหมี่ฮกเกี้ยนที่เป็นต้นกำเนิดของร้านตั้งแต่แรก “ทีแรกเราผัดหมี่เจขายช่วงประเพณีกินผัก ลูกค้าบอกว่าผัดหมี่อร่อยทำไมไม่เปิดร้านขาย ก็เลยได้เริ่มขายหมี่ฮกเกี้ยนตั้งแต่นั้นมา แล้วค่อยๆขยับขยายมาจนถึงปัจจุบัน”'),
            about_place('        ต้องบอกว่าเมนูของร้าน “ครัวจงจิต บะหมี่ฮกเกี้ยน” ภูเก็ต มีให้เลือกเยอะจริง ๆ  ตั้งแต่อาหารตามสั่งธรรมดา ไปจนถึงอาหารพื้นเมืองภูเก็ต และเมนูที่โดดเด่นที่ใครไปใครมาก็ต้องสั่งลิ้มลองรสชาติกันก็คือ “หมี่ผัดฮกเกี้ยน” (ธรรมดา 50 บาท / ใส่ไข่ 60 บาท) เส้นหมี่สดใหม่มีความมันและเค็มแบบกำลังดี ผัดด้วยไฟแรง ได้กลิ่นหอมแบบเฉพาะตัว ในชามนี้นอกจากจะมีเส้นหมี่เป็นหลักแล้ว ยังมีวัตถุดิบอื่น ๆ อย่างเช่น กุ้ง, หอยติบ, ปลาหมึก, หมู, ลูกชิ้นปลาภูเก็ต (อ๋วน) คุ้มค่าทั้งรสชาติและปริมาณกันเลย'),
            about_place2('เวลาเปิด-ปิด :'),
            about_place('        เปิดทุกวัน ตั้งแต่ 11:00 - 20:30 น '),
            about_place2('โทรศัพท์ :'),
            about_place('        086-940-8144   '),
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
            kButton_Food2(),
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