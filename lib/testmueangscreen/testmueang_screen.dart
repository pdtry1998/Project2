import 'package:flutter/material.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';
//import 'package:flutter_svg/flutter_svg.dart';
import 'package:project/testmueangscreen/detail_screen.dart';

// class TestMueang extends StatefulWidget {
//   @override
//   _TestMueangState createState() => _TestMueangState();
// }
//
// class _TestMueangState extends State<TestMueang> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 64),
//         width: double.infinity,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//         //หัวข้อด้านบน
//           Container(
//             width: double.infinity,
//             child: Stack(
//               children: <Widget>[
//                 Container(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: <Widget>[
//                       Text(
//                         'PHUKET',
//                         style: TextStyle(
//                           color: Colors.grey,
//                           fontWeight: FontWeight.w500,
//                           fontSize: 15.0,
//                         ),
//                       ),
//                       SizedBox(height: 10.0),
//
//                       Text('Mueang Phuket\n (อำเภอเมือง)',
//                         style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 30.0,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//
//
//               ],
//             ),
//           ),
//
//             SizedBox(height: 20.0),
//             // แคทตาลอค
//             // Container(
//             //   child: Row(
//             //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             //     children: <Widget>[
//             //       Text('Top',
//             //         style:  TextStyle(
//             //           fontWeight: FontWeight.w700,
//             //           fontSize: 16.0,
//             //         ),
//             //       ),
//             //       Text('One',
//             //         style:  TextStyle(
//             //           fontWeight: FontWeight.w700,
//             //           fontSize: 16.0,
//             //         ),
//             //       ),
//             //       Text('Two',
//             //         style:  TextStyle(
//             //           fontWeight: FontWeight.w700,
//             //           fontSize: 16.0,
//             //         ),
//             //       ),
//             //       Text('Three',
//             //         style:  TextStyle(
//             //           fontWeight: FontWeight.w700,
//             //           fontSize: 16.0,
//             //         ),
//             //       ),
//             //     ],
//             //   ),
//             // ),
//           Expanded(
//               child: Container(
//                 child: LayoutGrid(
//                   columnGap: 12,
//                   rowGap: 12,
//                   templateColumnSizes:[
//                     FlexibleTrackSize(1),
//                     FlexibleTrackSize(1),
//                   ],
//                   templateRowSizes: [
//                     FlexibleTrackSize(1),
//                     FlexibleTrackSize(0.6),
//                     FlexibleTrackSize(1),
//                   ],
//                   children: <Widget>[
//                     getPlaceWidget(" "),
//
//                     getPlaceWidget(" "),
//                     getPlaceWidget(" "),
//                     getPlaceWidget(" "),
//
//
//
//
//                   ],
//                 ),
//               )
//             )
//
//           ],
//          ),
//       ),
//     );
//   }
//
//
// getPlaceWidget(imagePath) {
//   return Container(
//     decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(20.0),
//       color: Colors.pink,
//     ),
//   );
//  }
// }

class TestMueang extends StatefulWidget {
  @override
  _TestMueangState createState() => _TestMueangState();
}

class _TestMueangState extends State<TestMueang> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 64),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///Container for header
            Container(
              width: double.infinity,
              child: Stack(
                children: [
                  ///Container for welcoming text
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "PHUKET",
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              fontSize: 13),
                        ),
                        Text(
                          "อำเภอเมืองภูเก็ต",
                          style: TextStyle(
                              color: Colors.lightBlue,
                              fontWeight: FontWeight.bold,
                              fontSize: 38),
                        )
                      ],
                    ),
                  ),

                  ///Profile Picture
                ],
              ),
            ),

            ///vertical spacing
            SizedBox(
              height: 16,
            ),

            ///Container for actionables
            // Container(
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       Text(
            //         "Top",
            //         style: TextStyle(
            //           color:  Colors.red,
            //           fontSize: 16,
            //           fontWeight: FontWeight.w700,
            //         ),
            //       ),
            //       Text(
            //         "For you",
            //         style: TextStyle(
            //           color:  Colors.red,
            //           fontSize: 16,
            //           fontWeight: FontWeight.w700,
            //         ),
            //       ),
            //       Text(
            //         "Hidden Gems",
            //         style: TextStyle(
            //           color:  Colors.red,
            //           fontSize: 16,
            //           fontWeight: FontWeight.w700,
            //         ),
            //       ),
            //       IconButton(
            //         icon: Icon(
            //           Icons.menu,
            //           color:  Colors.red,
            //         ),
            //       )
            //     ],
            //   ),
            // ),

            ///vertical spacing
            SizedBox(
              height: 16,
            ),

            ///Container for places list
            Expanded(
              child: Container(
                child: LayoutGrid(
                  columnGap: 12,
                  rowGap: 12,
                  templateColumnSizes: [
                    FlexibleTrackSize(1),
                    FlexibleTrackSize(1),

                    ///means 50% to both columns
                  ],
                  templateRowSizes: [
                    ///three rows
                    FlexibleTrackSize(1),
                    FlexibleTrackSize(0.6),
                    FlexibleTrackSize(1),

                    ///means first and third row will share same space but second will take 1/6 height compare to others
                  ],
                  children: [
                    ///Lets make container for each elements
                    getPlaceWidget("assets/images_destination/9.2.jpg")
                        .withGridPlacement(
                            rowStart: 0, columnStart: 0, rowSpan: 2),
                    getPlaceWidget("assets/images_destination/10.2.jpg")
                        .withGridPlacement(
                            rowStart: 2, columnStart: 0, rowSpan: 1),
                    getPlaceWidget("assets/images_destination/10.3.jpg")
                        .withGridPlacement(
                            rowStart: 0, columnStart: 1, rowSpan: 1),
                    getPlaceWidget("assets/images_destination/11.1.1.jpg")
                        .withGridPlacement(
                            rowStart: 1, columnStart: 1, rowSpan: 2),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget getPlaceWidget(imagePath) {
    return GestureDetector(
      onTap: () {
        ///For going on next screen
        Navigator.push(
            context,
            MaterialPageRoute(

                ///Send image path as we have setted it as tag of hero
                builder: (context) => DetailScreen(imagePath)));
      },
      child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: Colors.red),
          child: Stack(
            children: [
              Hero(
                ///For hero animation on route transition
                tag: imagePath,
                child: ClipRRect(
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),

              ///For rating and title
              Positioned(
                top: 16,
                left: 16,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "สถานที่",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w700),
                    ),

                    ///Rating
                    // Chip(
                    //   backgroundColor: Colors.white,
                    //   label: Row(
                    //     children: [
                    //       Icon(Icons.star, color:  Colors.red, size: 15,),
                    //       ///For  space
                    //       SizedBox(width: 4,),
                    //       Text(
                    //         "4.0",
                    //         style: TextStyle(
                    //             fontSize: 14,
                    //             color: Colors.red,
                    //             fontWeight: FontWeight.w700
                    //         ),
                    //       ),
                    //
                    //     ],
                    //   ),
                    // )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
