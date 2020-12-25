import 'package:flutter/material.dart';
import 'package:project/constant.dart';

class WelcomeBack extends StatelessWidget {
  const WelcomeBack({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
      child: Text(
        'Welcome ',
        style: TextStyle(
          color: mPrimaryTextColor,
          fontSize: 42,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}