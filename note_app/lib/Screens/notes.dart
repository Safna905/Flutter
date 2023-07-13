import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class NotesPage extends StatefulWidget {


  @override
  State<NotesPage> createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {

  TextEditingController titlectrl = TextEditingController();
  TextEditingController notectrl = TextEditingController();

var uuid = Uuid();
var id1;

@override
void initState() {
    // id = uuid.v4();
    super.initState();
  }

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
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextFormField(

                  onChanged: (val) {
                    setState(() {});
                  },
                  controller: titlectrl,
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

                  onChanged: (val) {
                    setState(() {});
                  },
                  controller: notectrl,
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
                  onPressed: () {
                    id1 = uuid.v4();
                    _addNotes(id1);
                    // _displayNotes();
                  },
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
                ),
                Container(
                  height:650,
                  child: StreamBuilder<QuerySnapshot> (
                    stream: FirebaseFirestore.instance.collection('User2').where('Status',isEqualTo: 1).snapshots(),
                    builder: (context,snapshot) {
                      if(!snapshot.hasData) {
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                      if(snapshot.hasData &&snapshot.data!.docs.length == 0) {
                        return Center(
                          child: Text('No Data Found'),
                        );
                      }
                      return ListView.builder(
                          itemCount: snapshot.data!.docs.length,
                          itemBuilder: (context, index) {
                            var doc = snapshot.data!.docs[index];
                            final  id = doc['User_id'];
                            final title = doc['Title'];
                            final note = doc['Note'];
                            final status = doc['Status'];
                            return ListTile(
                              title: Text(title),
                              subtitle: Text(note),
                              trailing: Container(
                                width: 100,
                                child: Row (
                                  children: [
                                    IconButton(
                                        onPressed: () {
                                          print('pressed delete');
                                          _deleteNotes(id);
                                          setState(() {
                                          });
                                        },
                                        icon: Icon(Icons.edit)),
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.delete)),
                                  ],
                                ),
                              ),
                            );
                          }
                      );
                    },
                  ),

                )
              ],
            ),
          ),
        ));
  }

  void _addNotes(String id) async {

    // Get a reference to the Firestore collection where you want to store the student's data
    final CollectionReference noteCollection = FirebaseFirestore.instance.collection('User2').doc(id) as CollectionReference<Object?>;

    final Map<String, dynamic> noteData = {
      'User_id' :uuid.v4(),
      'Title': titlectrl.text,
      'Note': notectrl.text,
      'CreatedAt': DateTime.now(),
      'Status': 1,
    };

    // Add the notes as a new document in the collection
    await noteCollection.add(noteData);
  }
  // void _displayNotes() async{
  // final CollectionReference noteCollection = FirebaseFirestore.instance.collection('User2');
  // await noteCollection.get();
  //
  // }

void _deleteNotes(String id) async {

  FirebaseFirestore.instance.collection('User2').doc(id).set(
    {
      'Status': 0
    }
  );
}
}


