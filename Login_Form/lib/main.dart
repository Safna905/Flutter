import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';


import 'Screens/Registtration_Window.dart';
import 'Screens/newform.dart';


void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());

}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ShowRegisterPage(),
    );
  }
}
