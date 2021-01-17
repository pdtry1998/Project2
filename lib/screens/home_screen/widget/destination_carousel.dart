import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project/screens/home_screen/widget/destination_model.dart';
import 'package:project/screens/home_screen/widget/destination_widget/patong_screen.dart';



class DestinationCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'แนะนำ',
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                ),
              ),
              // GestureDetector(
              //   onTap: () => print('ดูทั้งหมด'),
              //   child: Text(
              //     'ดูทั้งหมด',
              //     style: TextStyle(
              //       color: Theme.of(context).primaryColor,
              //       fontSize: 16.0,
              //       fontWeight: FontWeight.w600,
              //       letterSpacing: 1.0,
              //     ),
              //   ),
              // ),
            ],
          ),
        ),

        Container(
          height: 450.0,
         // color: Colors.blue,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: destinations.length,
              itemBuilder: (BuildContext contest, int index){
                Destination destination = destinations[index];
                return GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => PatongScreen(
                            destination: destination,
                          ),
                      ),
                  ),


                  child: Container(
                    margin: EdgeInsets.all(10.0),
                    width: 190.0,
               //   color: Colors.red,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: <Widget>[
                        Positioned(
                          bottom:15.0,
                          child: Container(
                            height: 130.0,
                            width: 200.0,
                            decoration: BoxDecoration(
                            color: Colors.white,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(destination.nplace,
                                  style: TextStyle(
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 1.2,
                                  ),
                                  ),
                                  Text(destination.description,
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                offset: Offset(0.0,5.0),
                                blurRadius:6.0,
                              ),
                            ],
                          ),

                          child: Stack(
                            children: <Widget>[
                                Hero(
                                  tag: destination.imageUrl,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20.0),
                                    child: Image(
                                      height:320.0,
                                      width: 180.0,
                                      image: AssetImage(destination.imageUrl),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),


                              Positioned(
                                left: 10.0,
                                bottom: 10.0,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                  Text(destination.place,style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 1.2,
                                  ),
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Icon(
                                        FontAwesomeIcons.locationArrow,
                                        size: 10.0,
                                        color:Colors.white,
                                      ),
                                      SizedBox(width: 5.0),
                                      Text(destination.district,style: TextStyle(
                                        color: Colors.white,
                                      ),),
                                    ],
                                  ),
                                ],
                                ),
                              )
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

