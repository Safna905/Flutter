import 'package:flutter/material.dart';

class SimpleListViewPage extends StatefulWidget {
  const SimpleListViewPage({Key? key}) : super(key: key);

  @override
  State<SimpleListViewPage> createState() => _SimpleListViewPageState();
}

class _SimpleListViewPageState extends State<SimpleListViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple ListView in Flutter'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            Row(
              children: [
                Icon(Icons.alarm),
                SizedBox(width: 20,),
                Text('Alarm',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 22,
                ),)
              ],
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                Icon(Icons.android),
                SizedBox(width: 20,),
                Text('Android',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 22,
                  ),)
              ],
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                Icon(Icons.announcement),
                SizedBox(width: 20,),
                Text('Announcement',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 22,
                  ),)
              ],
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                Icon(Icons.apps),
                SizedBox(width: 20,),
                Text('Apps',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 22,
                  ),)
              ],
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                Icon(Icons.archive),
                SizedBox(width: 20,),
                Text('Archive',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 22,
                  ),)
              ],
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                Icon(Icons.assessment),
                SizedBox(width: 20,),
                Text('Assessment',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 22,
                  ),)
              ],
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                Icon(Icons.backup),
                SizedBox(width: 20,),
                Text('Backup',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 22,
                  ),)
              ],
            ),

          ],
        ),
      ),
      
    );
  }
}
