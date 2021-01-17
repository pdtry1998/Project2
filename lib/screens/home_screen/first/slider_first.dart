import 'package:flutter/material.dart';
import 'package:project/screens/home_screen/first/first_model.dart';



class Slider_First extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              // Text(
              //   'ศาลหลักเมืองภูเก็ต',
              //   style: TextStyle(
              //     fontSize: 22.0,
              //     fontWeight: FontWeight.bold,
              //     letterSpacing: 1.5,
              //   ),
              // ),
            ],
          ),
        ),

        Container(
          height: 75.0,
          // color: Colors.blue,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: destinations3.length,
            itemBuilder: (BuildContext contest, int index){
              Destination3 destination3 = destinations3[index];
              return GestureDetector(
                // onTap: () => Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (_) => PatongScreen(
                //       destination3: destination3,
                //     ),
                //   ),
                // ),


                child: Container(
                  margin: EdgeInsets.all(10.0),
                  width: 62.0,
                  //   color: Colors.red,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: <Widget>[
                      // Positioned(
                      //   bottom:15.0,
                      //   child: Container(
                      //     height: 130.0,
                      //     width: 300.0,
                      //     decoration: BoxDecoration(
                      //       color: Colors.white,
                      //       borderRadius: BorderRadius.circular(10.0),
                      //     ),
                      //     child: Padding(
                      //       padding: EdgeInsets.all(10.0),
                      //       child: Column(
                      //         mainAxisAlignment: MainAxisAlignment.end,
                      //         crossAxisAlignment: CrossAxisAlignment.start,
                      //         children: <Widget>[
                      //           Text(destination3.place,
                      //             style: TextStyle(
                      //               fontSize: 22.0,
                      //               fontWeight: FontWeight.w600,
                      //               letterSpacing: 1.2,
                      //             ),
                      //           ),
                      //           Text(destination3.description,
                      //             style: TextStyle(
                      //               color: Colors.grey,
                      //             ),
                      //           ),
                      //         ],
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(0.0,5.0),
                              blurRadius:2.0,
                            ),
                          ],
                        ),

                        child: Stack(
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: Image(
                                height:80.0,
                                width: 65.0,
                                image: AssetImage(destination3.imageUrl),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
