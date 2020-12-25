import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:project/constant.dart';
import 'package:project/screens/home_screen/home.dart';
import 'package:project/screens_login/home/widget/login_and_register.dart';
import 'file:///E:/Project/flutterApp/flutter_app/Project/project/lib/screens_login/home/widget/slider_dot.dart';
import 'package:project/screens_login/home/widget/login_with_facebook.dart';
import 'package:project/screens_login/home/widget/login_with_google.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //Method ลอคอินค้างไว้เลย
  // void iniState(){
  //   super.initState();
  //   checkStatus();
  // }
  // Future<void> checkStatus()async{
  //   FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  //   var firebaseUser = firebaseAuth.currentUser;
  //   if (firebaseUser != null) {
  //     MaterialPageRoute materialPageRoute =
  //        MaterialPageRoute(builder: (BuildContext) => MyHomePage());
  //     Navigator.of(context).pushAndRemoveUntil(
  //        materialPageRoute, (Route<dynamic> route) => false);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Image.asset('assets/images_login/8.png'),
          //SliderDot(),
         SizedBox(
            height: 20,
          ),
          Text(
            'Welcome to \nPhuket',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: mPrimaryColor,
              fontSize: 40,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 0,
          ),
          LoginAndRegister(),
          LoginWithGoogle(),
          SizedBox(
            height: 10.0,
          ),
          LoginWithFacebook(),

        ],
      ),
    );
  }

}
