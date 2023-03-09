import 'package:flutter/material.dart';

class CheckboxListTilepage extends StatefulWidget {
  const CheckboxListTilepage({Key? key}) : super(key: key);

  @override
  State<CheckboxListTilepage> createState() => _CheckboxListTilepageState();
}

class _CheckboxListTilepageState extends State<CheckboxListTilepage> {

  bool and =false;
  bool flu =false;
  bool ios =false;
  bool php =false;
  bool node =false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CheckBox ListTile Demo',
        style: TextStyle(
          fontWeight: FontWeight.bold
        ),),
        centerTitle: true,
      ),

      body: Column(
        children: [
          CheckboxListTile(
              value:and ,
              onChanged: (val) {
                setState(() {
                  and = val;
                });
              },
            title: Text('Android',
            style: TextStyle(
              fontWeight: FontWeight.bold
            ),),

              ),
          CheckboxListTile(
            value:flu ,
            onChanged: (val) {
              setState(() {
                flu =val;
              });
            },
            title: Text('Flutter',
              style: TextStyle(
                  fontWeight: FontWeight.bold
              ),),

          ),
          CheckboxListTile(
            value:ios ,
            onChanged: (val) {
              setState(() {
                ios = val;
              });
            },
            title: Text('iOS',
              style: TextStyle(
                  fontWeight: FontWeight.bold
              ),),

          ),
          CheckboxListTile(
            value:php ,
            onChanged: (val) {
              setState(() {
              php = val;
            });},
            title: Text('PHP',
              style: TextStyle(
                  fontWeight: FontWeight.bold
              ),),

          ),
          CheckboxListTile(
            value:node ,
            onChanged: (val) {
              setState(() {
                node = val;
              });
            },
            title: Text('Node',
              style: TextStyle(
                  fontWeight: FontWeight.bold
              ),),

          )

        ],
      ),
    );
  }
}
