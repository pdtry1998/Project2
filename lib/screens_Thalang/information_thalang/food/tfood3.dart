import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:project/screens_Thalang/information_thalang/food/widget/tbuttonfood3.dart';
import 'package:project/screens_kathu/information_kathu/food/widget/kbuttonfood1.dart';
import 'package:project/screens_kathu/information_kathu/place/widget/kbutton2.dart';
import 'package:project/screens_kathu/information_kathu/place/widget/kbutton3.dart';
import 'package:project/screens_kathu/information_kathu/place/widget/kbutton4.dart';


class ThalangFood3 extends StatefulWidget {
  ThalangFood3({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _ThalangFood3State createState() => _ThalangFood3State();
}

class _ThalangFood3State extends State<ThalangFood3> {
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
                            AssetImage('assets/images_thalang/2.3.1.jpg'),
                            // Photo from https://unsplash.com/photos/2d4lAQAlbDA
                            AssetImage('assets/images_thalang/2.3.2.jpg'),
                            // Photo from https://unsplash.com/photos/FqqiAvJejto
                            AssetImage('assets/images_thalang/2.3.3.jpg'),
                            // Photo from https://unsplash.com/photos/_-JR5TxKNSo
                            AssetImage('assets/images_thalang/2.3.4.jpg'),
                            // Photo from https://unsplash.com/photos/K0rvMa1Y18A
                            AssetImage('assets/images_thalang/2.3.5.jpg'),
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
                              'กินกับอี๋',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,

                              ),
                              //style: TextStyle(fontFamily: 'ConcertOne-Regular'),
                            ),
                            Text('\81, ถนน ศรีสุนทร ตำบล ศรีสุนทร อำเภอถลาง ' ,
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
            about_place('        ร้านอาหารพื้นบ้านภูเก็ตที่ทั้งบรรยากาศและความเป็นกันเองของร้าน ทำให้เรารู้สึกเหมือนได้นั่งกินข้าวที่บ้านญาติผู้ใหญ่สักคน มันช่างอบอุ่บอย่างบอกไม่ถูก จนอยากให้เพื่อน ๆ ได้ลองมาสัมผัสกับที่นี่กันสักครั้งหนึ่ง ที่ร้าน “กินกับอี๋” ภูเก็ต  '),
            about_place('        ร้าน “กินกับอี๋” ภูเก็ต ตั้งอยู่ที่ถนน ศรีสุนทร ภูเก็ต ทางเข้าร้านอยู่ตรงข้ามโรงเรียนบ้านม่าหนิก ปากทางเข้าร้านติดกับ 7-11 เป็นร้านอาหารพื้นบ้านภูเก็ตที่บรรยากาศดีมาก เป็นบ้านสวนที่ร่มรื่น และเต็มไปด้วยต้นไม้นานาพันธุ์ มีมุมให้เลือกนั่งได้แบบชิลล์ ๆ มีลมพัดเย็นสบายตลอดเวลา ไปถึงร้านก็เจอ “น้องทับทิม” และ “อาอี๋ซิ้ม” รอต้อนรับอยู่'),
            about_place('        เริ่มด้วยเมนูห้ามพลาดอย่าง “หมูอี๋ซิ้ม” (ราคา 140 บาท) หรือที่บ้างคนรู้จักในชื่อหมูทอดภูเก็ต เมนูนี้จะใช้หมูสามชั้นเนื้อสวยในการทำ ใช้เวลา 1 คืน ในการหมักหมู และใช้เวลาอีกกว่าชั่วโมงในการทอด เสิร์ฟพร้อมหัวไชเท้าดอง และต้องบอกว่าเป็นเมนูที่เสี่ยงต่อการไม่ได้กินมาก เพราะถ้าหมูสามชั้นเนื้อไม่สวย อี๋ซิ้มก็เลือกที่จะไม่ทำขาย'),
            about_place('        ใครจะกินอาหารใต้ก็ต้องมีเมนูนี้อยู่ในใจกันอย่างแน่นอน กับเมนู “ผักเหมียงผัดไข่” (ราคา 60 บาท) รสชาติเด็ดเกินหน้าตา จานนี้ “น้องทับทิม” เป็นคนลงมือผัดเอง แนะนำว่าให้สั่งมากินคู่กันกับ “น้ำชุบเยาะ” (ราคา 90 บาท) รสชาติเผ็ดเปรี้ยวถึงใจ เสิร์ฟพร้อมผักสด ที่ถึงรสชาติจะเผ็ดจนน้ำตาไหล แต่ก็หยุดกินต่อไม่ได้จริง ๆ'),
            about_place('        “แกงส้มปลามง” (ราคา 350 บาท) ปลามงสด ๆ ชิ้นหนา เนื้อแน่น ที่แกงมากับเครื่องแกงส้มที่ทางร้านตำเอง รสชาติเผ็ดถึงเครื่องอาหารใต้ฉบับภูเก็ต อี๋ซิ้มบอกว่า ลดระดับความเผ็ดลงมาแล้วน่ะ สงสารลูกค้า กินไปร้องไห้ไป เป็นอีกเมนูที่กินแล้วหยุดไม่ได้จริง ๆ '),
            about_place2('เวลาเปิด-ปิด :'),
            about_place('        เปิดอาทิตย์ละ 3 วัน คือ ศุกร์ เสาร์ อาทิตย์ ตั้งแต่ 11.00-18.30 น.'),
            about_place2('โทรศัพท์ :'),
            about_place('        095-428-7195'),
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
            tButton_Food3(),
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