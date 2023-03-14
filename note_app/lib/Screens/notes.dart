import 'package:flutter/material.dart';

class NotesPage extends StatefulWidget {
  const NotesPage({Key? key}) : super(key: key);

  @override
  State<NotesPage> createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Add Notes'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.only(
              top: 25.0, right: 10.0, bottom: 25.0, left: 10.0),
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  filled: true,
                  labelText: 'Title',
                  hintText: 'Title of note',
                  icon: Icon(Icons.title),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  filled: true,
                  labelText: 'Notes',
                  hintText: 'Notes here',
                  icon: Icon(Icons.note),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TextButton(
                onPressed: () {},
                child: Text('ADD'),
                style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    textStyle: TextStyle(
                      fontSize: 20,
                    ),
                    backgroundColor: Colors.deepPurple,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    )),
              )
            ],
          ),
        ));
  }
}
