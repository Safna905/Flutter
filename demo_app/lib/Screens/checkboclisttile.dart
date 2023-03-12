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
          fontWeight: FontWeight.bold,
          color: Colors.black
        ),),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),

      body: Column(
        children: [
          CheckboxListTile(
              value:and ,
              onChanged: (val) {
                setState(() {
                  and = val!;
                });
              },
            secondary: Image.network('https://cdn.icon-icons.com/icons2/2235/PNG/512/android_os_logo_icon_134673.png'),
            title: Text('Android',
            style: TextStyle(
              fontWeight: FontWeight.bold
            ),),

              ),
          CheckboxListTile(
            value:flu ,
            onChanged: (val) {
              setState(() {
                flu =val!;
              });
            },
            secondary: Image.network('https://pixlok.com/wp-content/uploads/2021/05/flutter-logo-768x768.jpg',
            scale: 1,),
            title: Text('Flutter',
              style: TextStyle(
                  fontWeight: FontWeight.bold
              ),),

          ),
          CheckboxListTile(
            value:ios ,
            onChanged: (val) {
              setState(() {
                ios = val!;
              });
            },
            secondary: Image.network('https://www.pngkit.com/png/detail/32-326147_ios-logo-png-transparent-background.png',),
            title: Text('iOS',
              style: TextStyle(
                  fontWeight: FontWeight.bold
              ),),

          ),
          CheckboxListTile(
            value:php ,
            onChanged: (val) {
              setState(() {
              php = val!;
            });},
            secondary: Image.network('https://banner2.cleanpng.com/20180427/zaq/kisspng-web-development-php-programming-language-computer-5ae381e5d40ec8.1931377315248593658686.jpg',),
            title: Text('PHP',
              style: TextStyle(
                  fontWeight: FontWeight.bold
              ),),

          ),
          CheckboxListTile(
            value:node ,
            onChanged: (val) {
              setState(() {
                node = val!;
              });
            },
            secondary: Image.network('https://www.pngfind.com/pngs/m/683-6833893_node-js-logo-png-transparent-png.png',),
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
