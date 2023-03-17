

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Screens/AnimatedSplashScreen.dart';
import 'Screens/ListTile.dart';
import 'Screens/ListTileBuilder.dart';
import 'Screens/SimpleListView.dart';
import 'Screens/SplashScreen.dart';
import 'Screens/Stack1.dart';
import 'Screens/Stack2.dart';
import 'Screens/Stack3.dart';
import 'Screens/Stack4.dart';
import 'Screens/StackOverflow.dart';
import 'Screens/WorldCities.dart';
import 'Screens/catalog.dart';
import 'Screens/checkboclisttile.dart';
import 'Screens/onboardscreen.dart';
import 'Screens/simpleContactList.dart';
import 'Screens/starReviews.dart';

 main() async {

   final prefs = await SharedPreferences.getInstance();
   final showHome = prefs.getBool('showHome') ?? false;

  runApp( MyApp( showHome : showHome));
}

class MyApp extends StatelessWidget {
   final bool showHome;

  const MyApp({
    super.key,
    required this.showHome});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'MyFlutterApp',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      debugShowCheckedModeBanner: false,
      // home: StarRatingPage(
      //   title : 'Star Rating'
      // ),
      home:showHome ? CitiesPage() : OnboardingPage()
      // CatalogPage(),
      // CheckboxListTilepage()
    );
  }
}
