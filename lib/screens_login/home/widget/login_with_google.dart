import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:project/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project/screens/home_screen/home.dart';
import 'package:project/screens_login/home/widget/Authen.dart';


class LoginWithGoogle extends StatefulWidget {
  @override
  _LoginWithGoogleState createState() => _LoginWithGoogleState();
}
 
class _LoginWithGoogleState extends State<LoginWithGoogle> {

  Authentication authentication = Authentication();


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: FlatButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(36),
            side: BorderSide(color: mGoogleColor)),
        // onPressed: () async{
        //   await authentication.googleSignin();
        //   Navigator.of(context).pushReplacement(MaterialPageRoute(
        //       builder: (context) => MyHomePage()));
        // },
        onPressed: (){_googleSignUp(); },
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SvgPicture.asset('assets/images_login/google.svg'),
              SizedBox(
                width: 12,
              ),
              Text(
                'Connect with Google',
                style: TextStyle(color: mGoogleColor),
              ),
            ],
          ),
        ),
      ),
    );
  }


  Future<void> _googleSignUp() async {
    try {
      final GoogleSignIn _googleSignIn = GoogleSignIn(
        scopes: [
          'email'
        ],
      );
      final FirebaseAuth _auth = FirebaseAuth.instance;

      final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
      final GoogleSignInAuthentication googleAuth = await googleUser.authentication;

      final AuthCredential credential = GoogleAuthProvider.getCredential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      final FirebaseUser user = (await _auth.signInWithCredential(credential)).user;
      print("signed in " + user.displayName);

      return user;
    }catch (e) {
      print(e.message);
    }
  }
}