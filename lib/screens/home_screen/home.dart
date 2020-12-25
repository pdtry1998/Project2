import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project/constant.dart';
import 'package:project/screens/home_screen/foldable_sidebar.dart';
import 'package:project/screens/home_screen/widget/destination_carousel.dart';
import 'package:project/screens/home_screen/widget/interpolate_carousel.dart';
import 'package:project/screens_login/home/home_screen.dart';
import 'package:project/screens_login/login/login_screen.dart';
import 'package:project/screens_login/splash_screen.dart';
import 'package:project/screens_mueang/mueange_screen.dart';
import 'package:project/screens_shop/shop.dart';
import 'package:project/testmueangscreen/testmueang_screen.dart';
// import 'package:project/screens_mueang/mueange_screen.dart';
// import 'package:project/testmueangscreen/testmueang_screen.dart';




class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  FSBStatus drawerStatus;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: FoldableSidebarBuilder(
          drawerBackgroundColor: Colors.black,
          drawer: CustomDrawer(closeDrawer: (){
            setState(() {
              drawerStatus = FSBStatus.FSB_CLOSE;
            });
          },),
          screenContents: FirstScreen(),
          status: drawerStatus,
        ),
        floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.black,
            child: Icon(Icons.menu,color: Colors.white,),
            onPressed: () {
              setState(() {
                drawerStatus = drawerStatus == FSBStatus.FSB_OPEN ? FSBStatus.FSB_CLOSE : FSBStatus.FSB_OPEN;
              });
            }),
      ),
    );
  }
}



class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: ListView(
        padding: EdgeInsets.symmetric(vertical: 30.0),
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left:30.0,right: 120.0),
            child: Text('ท่องเที่ยวในภูเก็ต',style: TextStyle(fontSize: 34.5,fontWeight: FontWeight.bold
            ),),
          ),
          SizedBox(height: 10.0),

          Positioned( // ช่องค้นหา
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal:kDefaultPadding),
              padding: EdgeInsets.symmetric(horizontal:kDefaultPadding),
            height: 54,
              decoration: BoxDecoration(
                  color:Colors.white,
                borderRadius: BorderRadius.circular(20.0),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: mPrimaryColor.withOpacity(0.20),
                  ),
                ]
              ),
              child:Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      onChanged:(value) {},
                      decoration: InputDecoration(
                        hintText: "ค้นหา",
                        hintStyle: TextStyle(
                          color: mPrimaryColor.withOpacity(0.5),
                        ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                       // suffixIcon:
                      //  SvgPicture.asset("assets/images_home/search.svg"),
                      ),
                    ),
                  ),
                  SvgPicture.asset("assets/images_home/search.svg"),
                ],
              ) ,
          ),),
          SizedBox(height: 20.0), // ปุ่มดูทั้งหมด
          DestinationCarousel(), // ส่วนแนะนำของหน้าแรก
          SizedBox(height: 10.0),
          InterpolateCarousel(), //ส่วนเพิ่มเติมของหน้าแรก

        ],
      )),
    );
  }
}




class CustomDrawer extends StatelessWidget {
  // get context => null;
  //
  // void myAlert(){
  //   showDialog(
  //       context: context,
  //       builder: (BuildContext context){
  //         return AlertDialog(
  //           title: Text('Are You Sure ? '),
  //           content:  Text('Do You Want Sign Out?'),
  //           actions: <Widget>[cancelButton(),okButton()],
  //         );
  //       });
  // }
  //
  // Widget cancelButton(){
  //   return FlatButton(child: Text('Cancet'),
  //     onPressed: (){
  //       Navigator.of(context).pop();
  //       processSignOut();
  //     },
  //   );
  // }
  //
  // Widget okButton(){
  //   return FlatButton(child: Text('OK'),
  //     onPressed: (){
  //       Navigator.of(context).pop();
  //     },
  //   );
  // }
  //
  // Future<void> processSignOut() async{
  //   FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  //   await firebaseAuth.signOut().then((response){
  //     MaterialPageRoute materialPageRoute =
  //         MaterialPageRoute(builder: (BuildContext context) => HomeScreen());
  //     Navigator.of(context).pushAndRemoveUntil(
  //         materialPageRoute, (Route<dynamic> route) => false);
  //   });
  // }

  final Function closeDrawer;

  const CustomDrawer({Key key, this.closeDrawer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return Container(
      color: Colors.white,
      width: mediaQuery.size.width * 0.60,
      height: mediaQuery.size.height,
      child: Column(
        children: <Widget>[
          Container(
              width: double.infinity,
              height: 200,
              color: Colors.grey.withAlpha(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    "assets/images_home/rps_logo.png",
                    width: 100,
                    height: 100,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("User ")
                ],
              )),
          ListTile(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MyHomePage()));
              closeDrawer();
            },
            leading: Icon(Icons.home),
            title: Text(
              "หน้าแรก",
            ),
          ),
          Divider(
            height: 1,
            color: Colors.grey,
          ),

          ListTile(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ShopScreen()));
              closeDrawer();
            },
            leading: Icon(Icons.add_circle),
            title: Text("ฝากร้าน"),
          ),
          Divider(
            height: 1,
            color: Colors.grey,
          ),

          ListTile(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>TestMueang()));
              closeDrawer();
            },
            leading: Icon(Icons.account_balance),
            title: Text("อำเภอเมือง"),
          ),
          Divider(
            height: 1,
            color: Colors.grey,
          ),

          ListTile(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MueangeScreen()));
              closeDrawer();
            },
            leading: Icon(Icons.toys),
            title: Text("อำเภอกระทู้"),
          ),
          Divider(
            height: 1,
            color: Colors.grey,
          ),

          ListTile(
            onTap: () {
              debugPrint("Tapped Notifications");
            },
            leading: Icon(Icons.notifications),
            title: Text("อำเภอถลาง"),
          ),
          Divider(
            height: 1,
            color: Colors.grey,
          ),

          ListTile(
             onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomeScreen()));
              closeDrawer();
            },
            // onTap: (){
            //   myAlert();
            // },
            leading: Icon(Icons.exit_to_app),
            title: Text("ออกจากระบบ"),
          ),
        ],
      ),
    );
  }
}
