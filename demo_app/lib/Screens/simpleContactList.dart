import 'package:flutter/material.dart';

class SimpleContactList extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    List names = ['John Judah', 'Basel Akambi', 'Andrew Jacob', 'Emrey Igly', 'Emma Watson',
    'Airine Antony', 'Richard', 'Maichael Debry', 'Ananya', 'Aleena Emcy'];

    List mycolor = <Color>[Colors.blue,Colors.pink, Colors.green, Colors.orange,Colors.grey, Colors.yellow, Colors.purple,Colors.blue,Colors.pink, Colors.green,];

    return Scaffold(

      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text('SimpleContactList'),
        ),
      ),

      body: ListView.builder(
          itemCount:names.length,
          itemBuilder: (context, index) {
            return Container(

              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey
                  ),
                ),
              ),
              child: ListTile(

                leading: Icon(Icons.account_circle,
                size: 40,
                color: mycolor[index],),
                title: Text(names[index]),
                subtitle: Text('2536-7896-356'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            );
          }),

    );
  }
}
