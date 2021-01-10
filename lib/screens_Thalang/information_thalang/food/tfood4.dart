import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:project/screens_Thalang/information_thalang/food/widget/tbuttonfood4.dart';
import 'package:project/screens_kathu/information_kathu/food/widget/kbuttonfood1.dart';
import 'package:project/screens_kathu/information_kathu/place/widget/kbutton2.dart';
import 'package:project/screens_kathu/information_kathu/place/widget/kbutton3.dart';
import 'package:project/screens_kathu/information_kathu/place/widget/kbutton4.dart';


class ThalangFood4 extends StatefulWidget {
  ThalangFood4({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _ThalangFood4State createState() => _ThalangFood4State();
}

class _ThalangFood4State extends State<ThalangFood4> {
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
                            AssetImage('assets/images_thalang/2.4.1.jpg'),
                            // Photo from https://unsplash.com/photos/2d4lAQAlbDA
                            AssetImage('assets/images_thalang/2.4.2.jpg'),
                            // Photo from https://unsplash.com/photos/FqqiAvJejto
                            AssetImage('assets/images_thalang/2.4.3.jpg'),
                            // Photo from https://unsplash.com/photos/_-JR5TxKNSo
                            AssetImage('assets/images_thalang/2.4.4.jpg'),
                            // Photo from https://unsplash.com/photos/K0rvMa1Y18A
                            AssetImage('assets/images_thalang/2.4.5.jpg'),
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
                              'หอยแซ๊บซีฟู๊ด',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,

                              ),
                              //style: TextStyle(fontFamily: 'ConcertOne-Regular'),
                            ),
                            Text('\(จากแยกอนุสาวรีย์ท้าวเทพกระษัตรี เลี้ยวมาทางเชิงทะเล-ม่าหนิก ประมาณ 6 กม.  ' ,
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
            about_place('        สายแซ่บ ต้องมา !!  เมนูแซบแซ๊บ มีให้เลือกมากมาย ทานยำรสแซบ ฟังดนตรีสดเพราะๆ  ร้านอาหารทะเลภูเก็ต ร้านนี้ป้ายไฟใหญ่สะดุดตา แต่ที่สะดุดตากว่า คือมีพนักงานดูแลลูกค้าหน้าตาน่ารัก เมนูที่ทางร้านแนะนำ คือ หอยชักตีน ที่จะมีเฉพาะที่บางจังหวัดเท่านั้น แต่ค่อย ๆ แคะหอยน่ะ ถ้าตีนหอยขาดจะแคะยากมาก อีกเมนูคือ ส้มตำสาหร่ายพวงองุ่น กินเพลิน ๆ เป็นที่ชื่นชอบทั้งเด็กและผู้ใหญ่ บรรยากาศร้าน นั่งสบาย สามารถนั่งในร้านแอร์เย็นฉ่ำ และโซน outdoor รับลมชิลๆ พนักงานบริการดี ยิ้มแย้ม คอยบริการอย่างเป็นกันเอง เมนูแนะนำอีกอาทิเช่น'),
            about_place('        "ปลาหมึกนึ่งมะนาว" ปลาหมึกเนื้อเด้งๆ เด้งแล้วเด้งอีก มีความกรอบนิดๆ เปรี้ยวซี้ด เผ็ดร้อนด้วยเครื่องยำที่ถูกใจคอสมุนไพร เผ็ดร้อนจากน้องขิงอิ๋งๆ ด้วย '),
            //about_place('        "ไก่ผัดเม็ดมะม่วง" เป็นเมนูที่เบสิกๆ แต่รสชาติแอดว้านซ์กันเลย ไก่ทอดกรอบ ผัดกับหอมใหญ่ พริกหยวก หอมๆ หวานมัน กลมกล่อม '),
            about_place('        "ไก่ผัดเม็ดมะม่วง" เป็นเมนูที่เบสิกๆ แต่รสชาติแอดว้านซ์กันเลย ไก่ทอดกรอบ ผัดกับหอมใหญ่ พริกหยวก หอมๆ หวานมัน กลมกล่อม '),
            about_place('        "ปลากะพงยำตะไคร้" เนื้อปลากะพงล้วนๆ ชุบแป้งทอดบางๆ พอดีคำ คลุกเคล้ากับเครื่องยำที่เน้นตะไคร้เป็นหลัก รสแซ่บๆซี้ดๆ'),
            about_place2('เวลาเปิด-ปิด :'),
            about_place('        เปิดทุกวัน : เวลา 12:00-23:00'),
            about_place2('โทรศัพท์ :'),
            about_place('        087-819-6983, 086-271-2680'),
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
            tButton_Food4(),
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