import 'dart:async';


import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/material.dart';
import 'package:project/screens_shop/models/shop_model.dart';

class ShowList extends StatefulWidget {
  @override
  _ShowListState createState() => _ShowListState();
}

class _ShowListState extends State<ShowList> {


  List<ShopModel> shopModels = List();


  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   readAllData();
  // }





  // Future<void> readAllData()async{
  //
  //
  //   Firestore firestore = Firestore.instance;
  //   CollectionReference collectionReference = firestore.collection('Shop');
  //   await collectionReference.snapshots().listen((response) {
  //
  //     List<DocumentSnapshot> snapshots = response.documents;
  //     for(var snapshot in snapshots){
  //       print('snapshot = $snapshot');
  //       print('Name =${snapshot.data('Name')}');
  //
  //     }
  //   });
  // }

  // Future readAllData() async {
  //   CollectionReference collectionReference = firestore.collection('Shop');
  //   subscription = await collectionReference.snapshots().listen((dataSnapshot) {
  //     snapshots = dataSnapshot.documents;
  //
  //     for (var snapshot in snapshots) {
  //       String name = snapshot.data['Name'];
  //       String detail = snapshot.data['Detail'];
  //
  //       print('name ==> $name, detail ==> $detail');
  //     }
  //   });
  // }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.yellow.shade800,title: Text('Show Shop'),
      ),
      body: Text('data'),
    );
  }
}

