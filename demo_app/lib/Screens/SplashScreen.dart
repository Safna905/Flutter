import 'package:flutter/material.dart';

import 'ListTile.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    //_navigatetopage();
  }

  _navigatetopage() async {
    await Future.delayed(Duration(milliseconds: 1500), () {});
    Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) => ListTilePage() ));
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.black,
        child: Container(
          child: Image.network("https://img.icons8.com/color/200w/flutter.png",
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Text('Flutter App',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 45,
              color: Colors.white
          ),),
      ),
    );
  }
}


