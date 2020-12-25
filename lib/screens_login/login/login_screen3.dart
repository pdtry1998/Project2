import 'package:flutter/material.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';

class Login3 extends StatefulWidget {
  @override
  _Login3State createState() => _Login3State();
}

class _Login3State extends State<Login3> {

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
      child: Column(mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          showAppName(),
          SizedBox(height: 30,),
          emailText(),
          SizedBox(height: 20,),
          passwordText(),
        ],
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
        ) ,
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
        ) ,
      ),
    );
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
                backButton(),content(),
              ],
            ),
          ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange.shade700,
        child: Icon(Icons.navigate_next,size: 36.0,),
        onPressed: (){},
      ),
    );
  }
}
