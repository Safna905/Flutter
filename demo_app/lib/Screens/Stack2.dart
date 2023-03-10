import 'package:flutter/material.dart';

class StackTwoPage extends StatefulWidget {
  const StackTwoPage({Key? key}) : super(key: key);

  @override
  State<StackTwoPage> createState() => _StackTwoPageState();
}

class _StackTwoPageState extends State<StackTwoPage> {
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
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Container(height: 250,
              width: 250,
              color: Color(0xFF523b5e),),
          ),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Container(height: 200,
              width: 200,
              color: Color(0xFF33243b),),
          ),
          Padding(
            padding: const EdgeInsets.all(75.0),
            child: Container(height: 150,
                width: 150,
                color: Color(0xFF1d1421)),
          ),
          Padding(
            padding: const EdgeInsets.all(100.0),
            child: Container(height: 100,
                width: 100,
                color: Colors.black),
          ),
        ],
      ),
    );
  }
}

