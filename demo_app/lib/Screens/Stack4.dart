import 'package:flutter/material.dart';

class StackFourPage extends StatefulWidget {
  const StackFourPage({Key? key}) : super(key: key);

  @override
  State<StackFourPage> createState() => _StackFourPageState();
}

class _StackFourPageState extends State<StackFourPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(

        children: [
          Padding(
            padding: const EdgeInsets.all(100.0),
            child: Container(
                height: 800,
                width: 100,
                color: Colors.black),
          ),
          Padding(
            padding: const EdgeInsets.all(75.0),
            child: Container(
                height: 500,
                width: 150,
                color: Color(0xFF1d1421)),
          ),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Container(
              height: 400,
              width: 200,
              color: Color(0xFF33243b),),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Container(
              height: 300,
              width: 250,
              color: Color(0xFF523b5e),),
          ),
          Container(
            height: 200,
            width: 300,
            color: Color(0xFF6d4f7d),
          ),
        ],
      ),
    );
  }
}
