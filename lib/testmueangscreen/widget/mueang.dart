

import 'package:project/testmueangscreen/widget/mueang_model.dart';

class Detailmueang {
  String imageUrl;
  String place;
  String nplace;
  String district;
  String description;
  List<Mueang> mueangs;

  Detailmueang({
    this.imageUrl,
    this.place,
    this.nplace,
    this.district,
    this.description,
    this.mueangs,
  });
}

List<Mueang> mueangs = [
  Mueang(
    imageUrl: 'assets/images_destination/1.jpg',
    name: 'St. Mark\'s Basilica',
    type: 'Sightseeing Tour',
    startTimes: ['9:00 am', '11:00 am'],
    rating: 5,
    price: 30,
  ),
  Mueang(
    imageUrl: 'assets/images_destination/2.jpg',
    name: 'Walking Tour and Gonadola Ride',
    type: 'Sightseeing Tour',
    startTimes: ['11:00 pm', '1:00 pm'],
    rating: 4,
    price: 210,
  ),
  Mueang(
    imageUrl: 'assets/images_destination/4.jpg',
    name: 'Murano and Burano Tour',
    type: 'Sightseeing Tour',
    startTimes: ['12:30 pm', '2:00 pm'],
    rating: 3,
    price: 125,
  ),
];

List<Detailmueang> detailmueang = [
  Detailmueang(
    imageUrl: 'assets/images_destination/1.jpg',
    place: 'Patong',
    nplace: 'หาดป่าตอง',
    district: 'Kathu',
    description: 'ห่างจากตัวเมืองภูเก็ตไปทางตะวันตกเฉียงเหนือประมาณ 15 กิโลเมตร',
    mueangs: mueangs,
  ),
  Detailmueang(
    imageUrl: 'assets/images_destination/2.jpg',
    place: 'Bangla road',
    nplace: 'ถนนบางลา',
    district: 'Kathu',
    description: 'ถนนคนเดินป่าตองเป็นย่านท่องเที่ยวยามราตรีชื่อดังของจังหวัดภูเก็ต',
    mueangs: mueangs,
  ),
  Detailmueang(
    imageUrl: 'assets/images_destination/3.jpg',
    place: 'Laem Phrom Thep',
    nplace: 'แหลมพรหมเทพ',
    district: 'Mueang',
    description: 'มีทัศนียภาพที่สวยงาม และเป็นจุดชมพระอาทิตย์ตกดินที่ได้รับความนิยม  ',
    mueangs: mueangs,
  ),
  Detailmueang(
    imageUrl: 'assets/images_destination/4.jpg',
    place: 'Lard-Yai',
    nplace: 'หลาดใหญ่',
    district: 'Mueang',
    description: 'ถนนคนเดินในย่านเมืองเก่าภูเก็ต บรรยากาศดี ของกินเพียบ แถมยังน่าถ่ายรูปสุดๆ ',
    mueangs: mueangs,
  ),
  Detailmueang(
    imageUrl: 'assets/images_destination/8.jpg',
    place: 'Krating Cape',
    nplace: 'แหลมกระทิง',
    district: 'Mueang',
    description: ' จุดชมวิวทะเลอันดามันได้กว้างไกล 360 องศา และบรรยากาศพระอาทิตย์ดินที่สวยงามมาก ',
    mueangs: mueangs,
  ),
];