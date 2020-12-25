import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:project/screens/home_screen/home.dart';
// import 'package:project/screens_login/login/widget/FadeAnimation.dart';
//
//
// class RegisterScreen extends StatefulWidget {
//   @override
//   _RegisterScreenState createState() => _RegisterScreenState();
// }
//
// class _RegisterScreenState extends State<RegisterScreen> {
// // Explicit
// final formkey = GlobalKey<FormState>();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: true,
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         elevation: 0,
//         brightness: Brightness.light,
//         backgroundColor: Colors.white,
//         leading: IconButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           icon: Icon(Icons.arrow_back_ios, size: 20, color: Colors.black,),
//         ),
//       ),
//       body: Form(key: formkey,
//         child: Container(
//           padding: EdgeInsets.symmetric(horizontal: 50),
//           height: MediaQuery.of(context).size.height - 150,
//           width: double.infinity,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: <Widget>[
//               Column(
//                 children: <Widget>[
//                   FadeAnimation(1, Text("Sign up", style: TextStyle(
//                       fontSize: 40,
//                       fontWeight: FontWeight.bold
//                   ),)),
//                   SizedBox(height: 20,),
//                   FadeAnimation(1.2, Text("Create an account, It's free", style: TextStyle(
//                       fontSize: 15,
//                       color: Colors.grey[700]
//                   ),
//                   )
//                   ),
//                 ],
//               ),
//
//               Column(
//                 children: <Widget>[
//                   FadeAnimation(1.2, makeInput(label: "Name")),
//                   FadeAnimation(1.3, makeInput(label: "Email")),
//                   FadeAnimation(1.4, makeInput(label: "Password", obscureText: true)),
//                 ],
//               ),
//
//               FadeAnimation(1.5, Container(
//                 padding: EdgeInsets.only(top: 3, left: 3),
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(50),
//                     border: Border(
//                       bottom: BorderSide(color: Colors.black),
//                       top: BorderSide(color: Colors.black),
//                       left: BorderSide(color: Colors.black),
//                       right: BorderSide(color: Colors.black),
//                     )
//                 ),
//
//                 child: MaterialButton(
//                   minWidth: double.infinity,
//                   height: 60,
//                   onPressed: () {
//                     print('You Click Upload');
//                     if (formkey.currentState.validate()) {
//                       formkey.currentState.save();
//                     }
//                   },
//                   color: Colors.greenAccent,
//                   elevation: 0,
//                   shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(50)
//                   ),
//                   child: Text("สมัครสมาชิก", style: TextStyle(
//                       fontWeight: FontWeight.w600,
//                       fontSize: 18
//                   ),
//                   ),
//                 ),
//               )),
//
//
//
//
//               FadeAnimation(1.6, Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   Text("มีบัญชีอยู่แล้ว ?"),
//                   Text(" เข้าสู่ระบบ", style: TextStyle(
//                       fontWeight: FontWeight.w600, fontSize: 18
//                   ),
//                   ),
//
//                 ],
//               )),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget makeInput({label, obscureText = false}) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: <Widget>[
//         Text(label, style: TextStyle(
//             fontSize: 15,
//             fontWeight: FontWeight.w400,
//             color: Colors.black87
//         ),),
//         SizedBox(height: 5,),
//         TextField(
//           obscureText: obscureText,
//           decoration: InputDecoration(
//             contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
//             enabledBorder: OutlineInputBorder(
//                 borderSide: BorderSide(color: Colors.grey[400])
//             ),
//             border: OutlineInputBorder(
//                 borderSide: BorderSide(color: Colors.grey[400])
//             ),
//           ),
//         ),
//         SizedBox(height: 30,),
//       ],
//     );
//   }
// }

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}
final formKey = GlobalKey<FormState>();
String nameString, emailString, passwordString;

class _RegisterScreenState extends State<RegisterScreen> {

  // Method
  Widget registerButton(){
    return IconButton(
        icon: Icon(Icons.cloud_upload),
      onPressed: (){
          print("You Click Upload");
          if (formKey.currentState.validate()) {
            formKey.currentState.save();
            print('name = $nameString, email = $emailString, password =$passwordString');
            registerThread();
          }
      },
    );
  }

  Future<void> registerThread()async{

    FirebaseAuth firebaseAuth = FirebaseAuth.instance;
    await firebaseAuth.createUserWithEmailAndPassword(
        email: emailString, password: passwordString)
        .then((response){
        print('Register Success for Email = $emailString');
        setupDisplayName();
    }).catchError((response){
      String title = response.code;
      String message = response.message;
      print('title = $title, message = $message');
      myAlert(title, message);
    });
  }

  //สมัครเสร็จ Route ไปยังหน้า MyHomePage
  Future<void> setupDisplayName() async {
    FirebaseAuth firebaseAuth = FirebaseAuth.instance;

    var user = firebaseAuth.currentUser;
    if (user != null) {
      user.updateProfile(displayName: nameString);

      MaterialPageRoute materialPageRoute =
      MaterialPageRoute(builder: (BuildContext context) => MyHomePage());
      Navigator.of(context).pushAndRemoveUntil(
          materialPageRoute, (Route<dynamic> route) => false);
    }
  }



  // popup บอกemail ซ้ำ
  void myAlert(String title, String message){
    showDialog(
      context: context, builder: (BuildContext context){
        return AlertDialog(
          title: ListTile(leading: Icon(
              Icons.add_alert,
              color: Colors.red,
              size: 48.0,
          ),
          title: Text(
              title,
              style:TextStyle(color: Colors.red),
          ),
          ),content: Text(message),
          actions: <Widget>[
            FlatButton(
              child: Text('OK'),
              onPressed: (){
                Navigator.of(context).pop();
                },
             )
          ],
        );
       } );}
  

  // Widget register(){
  //   return Scaffold(
  //       body: Column(
  //          children: <Widget>[
  //            // Image.asset('assets/images_login/test1.png'),
  //             Text('Welcome to \nPhuket',
  //                textAlign: TextAlign.center,
  //                style: TextStyle(
  //                color: Colors.blue,
  //                fontSize: 10,
  //                fontWeight: FontWeight.w500,
  //                  ),
  //                ),
  //              ]
  //        ),
  //    );
  // }

  Widget nameText(){
    return TextFormField(style: TextStyle(color: Colors.purple),
      decoration: InputDecoration(
        icon: Icon(
          Icons.face,
          color: Colors.purple,
          size: 48.0,
        ),
          labelText: 'Name :',
          labelStyle: TextStyle(
            color: Colors.purple,
            fontWeight: FontWeight.bold,
          ),
          helperText: 'Type Your Nick Name for Display',
        helperStyle: TextStyle(
            color: Colors.purple,
            fontStyle: FontStyle.italic)
      ),
      validator: (String value){
      if (value.isEmpty) {
        return 'Please Fill Your Name in the Blank';
      } else {
        return null;
        }
      }, onSaved: (String value){
      nameString = value.trim();
      },
    );
  }


  Widget emailText(){
    return TextFormField(style: TextStyle(color: Colors.blue.shade800),
      decoration: InputDecoration(
          icon: Icon(
            Icons.email,
            color: Colors.blue.shade800,
            size: 48.0,
          ),
          labelText: 'Email :',
          labelStyle: TextStyle(
            color: Colors.blue.shade800,
            fontWeight: FontWeight.bold,
          ),
          helperText: 'Type Your Email ',
          helperStyle: TextStyle(
              color: Colors.blue.shade800,
              fontStyle: FontStyle.italic)
      ),
      validator: (String value){
        if (!((value.contains('@')) && (value.contains('.')))) {
          return 'Please Type Email in  Exp. you@email.com';
        } else {
          return null;
        }
      }, onSaved: (String value){
        emailString = value.trim();
      },
    );
  }

  Widget passwordText(){
    return TextFormField(style: TextStyle(color: Colors.green.shade700),
      decoration: InputDecoration(
          icon: Icon(
            Icons.lock,
            color: Colors.green.shade700,
            size: 48.0,
          ),
          labelText: 'Password :',
          labelStyle: TextStyle(
            color: Colors.green.shade700,
            fontWeight: FontWeight.bold,
          ),
          helperText: 'Type Your password more 6 Charactor',
          helperStyle: TextStyle(
              color: Colors.green.shade700,
              fontStyle: FontStyle.italic)
      ),
      validator: (String value){
        if (value.length<6) {
          return 'Password More 6 Charactor';
        } else {
          return null;
        }
      },
      onSaved: (String value){
        passwordString = value.trim();
      },
    );
  }


  Widget showAppName (){
    return Row(mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        showText(),showLogo2()
      ],
    );
  }

  Widget showLogo(){
    return Container(
      width: 160.0,
      height: 160.0,
      child: Image.asset('assets/images_login/0.4.png',
      ),
    );
  }

  Widget showLogo2(){
    return Container(
      width: 210.0,
      height: 210.0,
      child: Image.asset('assets/images_login/0.4.4.png',
      ),
    );
  }

  Widget showText(){
    return Text(
      'Register ',
      style: TextStyle(
        fontSize: 40.0,
        fontWeight: FontWeight.bold,
        color: Colors.orange.shade900,
        fontStyle: FontStyle.italic,
        // fontFamily: 'Cardo-Regular',
      ),);
  }

  @override

  Widget build(BuildContext context) {
    return Scaffold(


      appBar: AppBar(
        backgroundColor: Colors.yellow.shade800,
        //title: Text('Register'),
        actions: <Widget>[registerButton()],
      ),
      body: Form( key: formKey,
        child: ListView
          (padding: EdgeInsets.all(30.0),
          children: <Widget>[
            showLogo2(),
            nameText(),
            SizedBox(height: 20,),
            emailText(),
            SizedBox(height: 20,),
            passwordText(),

          ],
        ),
      ),
    );
  }
}
