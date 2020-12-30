import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:project/screens/home_screen/home.dart';


class Login3 extends StatefulWidget {
  @override
  _Login3State createState() => _Login3State();
}

class _Login3State extends State<Login3> {

  final formKey = GlobalKey<FormState>();
  String emailString, passwordString;

  Widget backButton(){
    return IconButton(
      icon: Icon(Icons.navigate_before,size: 36.0,),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
  }

  Widget content(){
    return Center(
      child: Form(key: formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            showAppName(),
            SizedBox(height: 30,),
            emailText(),
            SizedBox(height: 20,),
            passwordText(),
          ],
        ),
      ),
    );
  }

Widget showAppName (){
    return Row(mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        showLogo(),showText(),
      ],
    );
}

Widget showLogo(){
    return Container(
      width: 150.0,
      height: 150.0,
      child: Image.asset('assets/images_login/0.2.png',
      ),
    );
}

Widget showText(){
    return Text(
      'Travel In Phuket',
      style: TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
          color: Colors.red.shade700,
         fontStyle: FontStyle.italic,
         // fontFamily: 'Cardo-Regular',
      ),);
}

Widget emailText(){
    return Container(width: 320.0,
      child: TextFormField(keyboardType: TextInputType.emailAddress,
        decoration:InputDecoration(
          icon: Icon(
            Icons.email,
            size: 36.0,
            color: Colors.blue.shade600),
          labelText: 'Email : ',
          labelStyle: TextStyle(color: Colors.blue.shade600),
        ) ,onSaved: (String value){
        emailString = value.trim();
        },
      ),
    );
}

  Widget passwordText(){
    return Container(width: 320.0,
      child: TextFormField(obscureText: true,
        decoration:InputDecoration(
          icon: Icon(
              Icons.lock,
              size: 36.0,
              color: Colors.green.shade600),
          labelText: 'Password : ',
          labelStyle: TextStyle(color: Colors.green.shade600),
        ) , onSaved: (String value){
        passwordString = value.trim();
        },
      ),
    );
  }

Future<void> checkAuthen()async{
    FirebaseAuth firebaseAuth = FirebaseAuth.instance;
    await firebaseAuth.signInWithEmailAndPassword(
        email: emailString, password: passwordString)
    .then((response) {print('Authen Success');
    MaterialPageRoute materialPageRoute =
        MaterialPageRoute(builder:(BuildContext context) => MyHomePage());
    Navigator.of(context).pushAndRemoveUntil(
        materialPageRoute,(Route<dynamic> route) => false);
    }).catchError((response){
      String title = response.code;
      String message = response.message;
      myAlert(title, message);
    });
}

Widget showTitle(String title){
    return ListTile(
      leading: Icon(
        Icons.add_alert,
        size: 48.0,
        color: Colors.red,
      ),title: Text(
      title,
      style: TextStyle(
          color:Colors.red,
          fontSize: 18.0,
        fontWeight: FontWeight.bold,
      ),
     ),
    );
}

Widget okButton(){
    return FlatButton(
      child: Text('OK'),
      onPressed:  (){Navigator.of(context).pop();},
    );
}

void myAlert(String title,String message){
    showDialog(
        context: context,
        builder: (BuildContext context){
      return AlertDialog(
        title: showTitle(title),
        content: Text(message),
        actions: <Widget>[okButton()],
      );
    });
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              gradient: RadialGradient(
                colors: [Colors.white,Colors.yellow.shade800],radius:1.0,
              ),
            ),
            child: Stack(
              children: <Widget>[
                backButton(),
                content(),
              ],
            ),
          ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange.shade700,
        child: Icon(Icons.navigate_next,size: 36.0,),
        onPressed: (){
          formKey.currentState.save();
          print('email = $emailString, password =$passwordString');
          checkAuthen();
        },
      ),
    );
  }
}
