import 'package:flutter/material.dart';
class StackOnePage extends StatefulWidget {
  const StackOnePage({Key? key}) : super(key: key);

  @override
  State<StackOnePage> createState() => _StackOnePageState();
}

class _StackOnePageState extends State<StackOnePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(

        children: [
          Container(
            height: 300,
            width: 300,
            color: Color(0xFF6d4f7d),
          ),
          Container(height: 250,
            width: 250,
            color: Color(0xFF523b5e),),
          Container(height: 200,
            width: 200,
            color: Color(0xFF33243b),),
          Container(height: 150,
            width: 150,
            color: Color(0xFF1d1421)),
          Container(height: 100,
            width: 100,
            color: Colors.black),
        ],
      ),
    );
  }
}
