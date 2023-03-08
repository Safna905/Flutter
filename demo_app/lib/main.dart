import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

import 'Screens/ListTile.dart';
import 'Screens/ListTileBuilder.dart';
import 'Screens/SplashScreen.dart';
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
      home: AnimatedSplashScreen(
        splash:Container(
          child: Image.network("https://img.icons8.com/color/200w/flutter.png",
        ),
      ),
        duration: 3000,

        // bottomNavigationBar: Container(
        //   color: Colors.black,
        //   child: Text('Flutter App',
        //     style: TextStyle(
        //         fontWeight: FontWeight.bold,
        //         fontSize: 45,
        //         color: Colors.white
        //     ),),
        // ),
        nextScreen: ListTilePage(),
        splashTransition: SplashTransition.fadeTransition,
      ),

    );
  }
}
