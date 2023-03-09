import 'package:demo_app/Screens/simpleContactList.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

class AnimatedSplashScreenPage extends StatelessWidget {
  const AnimatedSplashScreenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
        splash: Container(
          child: Image.network(
            "https://img.icons8.com/color/200w/flutter.png",
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
        nextScreen: SimpleContactList(),
        splashTransition: SplashTransition.fadeTransition,
      ),
    );
  }
}
