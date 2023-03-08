import 'package:flutter/material.dart';

import 'Screens/ListTile.dart';
import 'Screens/ListTileBuilder.dart';
import 'Screens/starReviews.dart';

void main () {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'MyFlutterApp',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      debugShowCheckedModeBanner: false,
      // home: StarRatingPage(
      //   title : 'Star Rating'
      // ),
      home: ListTileBuilderPage(),
    );
  }
}
