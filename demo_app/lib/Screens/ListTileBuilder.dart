import 'package:flutter/material.dart';

class ListTileBuilderPage extends StatefulWidget {
  const ListTileBuilderPage({Key? key}) : super(key: key);

  @override
  State<ListTileBuilderPage> createState() => _ListTileBuilderPageState();
}

class _ListTileBuilderPageState extends State<ListTileBuilderPage> {
  int number = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('List View'),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.menu),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.settings),
          )
        ],

      ),

      body:SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: OutlinedButton(
                  onPressed: () {
                    setState(() {
                      number += 1;
                    });
                  },
                  child: Text('Add Tile')),
            ),
            ListView.builder(
              physics: ScrollPhysics(parent: null),
              shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                      child: ListTile(
                        leading: Icon(Icons.perm_contact_cal),
                        title: Text('Person ${index + 1}'),
                        subtitle: Text('Subtitle ${index + 1} '),
                      )
                  );
                },
                itemCount: number,
            ),
          ],
        ),
      ) ,
    );
  }
}
