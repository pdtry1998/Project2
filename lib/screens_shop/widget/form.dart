import 'package:flutter/material.dart';
import 'package:project/screens_login/login/widget/input_text_field.dart';


class Form1 extends StatelessWidget {
  const Form1({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 30,
      ),
      child: Column(
        children: <Widget>[
          InputTextField(
            label: 'ชื่อร้าน',
            onChange: (value) {},
          ),
          SizedBox(height: 16,),
          InputTextField(
            label: 'ชื่อเจ้าของร้าน',
            password: true,
            onChange: (value) {},
          ),
          SizedBox(height: 16,),
          InputTextField(
            label: 'ที่ตั้ง',
            password: true,
            onChange: (value) {},
          ),
          SizedBox(height: 16,),
          InputTextField(
            label: 'รายละเอียดของร้าน',
            password: true,
            onChange: (value) {},
          ),
        ],
      ),
    );
  }
}