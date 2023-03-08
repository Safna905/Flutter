import 'package:flutter/material.dart';
import 'package:myapp_1/first_page.dart';
import 'package:myapp_1/second_page.dart';
import 'package:myapp_1/third_page.dart';






void main()
{
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Demo',
      home: FirstPage()
    );
  }
}
