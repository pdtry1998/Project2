import 'package:flutter/material.dart';
import 'package:project/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project/screens/home_screen/home.dart';

class LoginWithFacebook extends StatelessWidget {
  const LoginWithFacebook({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: FlatButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(36),
            side: BorderSide(color: mFacebookColor)),
        onPressed: () => Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => MyHomePage())
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SvgPicture.asset('assets/images_login/facebook.svg'),
              SizedBox(
                width: 12,
              ),
              Text(
                'Connect with Facebook',
                style: TextStyle(color: mFacebookColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}