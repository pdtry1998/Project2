class Mueang {
  String imageUrl;
  String name;
  String address;
  String detail;

  Mueang({
    this.imageUrl,
    this.name,
    this.address,
    this.detail,
  });
}

final List<Mueang> mueangs = [
  Mueang(
    imageUrl:  'assets/images_destination/4.jpg',
    name: 'หลาดใหญ่',
    address: 'อำเภอเมืองภูเก็ต',
    detail: 'ถนนคนเดินในย่านเมืองเก่าภูเก็ต บรรยากาศดี ของกินเพียบ แถมยังน่าถ่ายรูปสุดๆ ',
  ),
  Mueang(
    imageUrl:  'assets/images_destination/8.jpg',
    name: 'แหลมกระทิง',
    address: 'อำเภอเมือง',
    detail: 'จุดชมวิวทะเลอันดามันได้กว้างไกล 360 องศา และบรรยากาศพระอาทิตย์ดินที่สวยงามมาก ',
  ),
  Mueang(
    imageUrl:  'assets/images_destination/5.jpg',
    name:  'เขานาคเกิด',
    address: 'อำเภอเมือง',
    detail: 'เป็นพระพุทธรูปสีขาวขนาดใหญ่ ณ บนยอดเขานาคเกิด ',
  ),
  Mueang(
    imageUrl:  'assets/images_destination/5.jpg',
    name:  'เขานาคเกิด',
    address: 'อำเภอเมือง',
    detail: 'เป็นพระพุทธรูปสีขาวขนาดใหญ่ ณ บนยอดเขานาคเกิด ',
  ),
];