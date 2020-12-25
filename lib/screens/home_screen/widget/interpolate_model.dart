class Interpolate {
  String imageUrl;
  String name;
  String address;
  String detail;

  Interpolate({
    this.imageUrl,
    this.name,
    this.address,
    this.detail,
  });
}

final List<Interpolate> interpolates = [
  Interpolate(
    imageUrl:  'assets/images_destination/6.jpg',
    name: 'วัดฉลอง',
    address: 'อำเภอเมืองภูเก็ต',
    detail: 'วัดไชยธารามเป็นวัดคู่บ้านคู่เมืองที่มีชื่อเสียงของภูเก็ต ',
  ),
  Interpolate(
    imageUrl:  'assets/images_destination/7.jpg',
    name: 'วัดพระทอง',
    address: 'อำเภอถลาง',
    detail: 'วัดแห่งนี้มีพระพุทธรูปที่โผล่จากพื้นดินเพียงครึ่งองค์ ',
  ),
  Interpolate(
    imageUrl:  'assets/images_destination/5.jpg',
    name:  'เขานาคเกิด',
    address: 'อำเภอเมือง',
    detail: 'เป็นพระพุทธรูปสีขาวขนาดใหญ่ ณ บนยอดเขานาคเกิด ',
  ),
];