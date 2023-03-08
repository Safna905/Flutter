import 'package:flutter/material.dart';
import 'package:login_form/Screens/databasestore.dart';

class DataStore extends StatefulWidget {
  const DataStore({Key? key}) : super(key: key);

  @override
  State<DataStore> createState() => _DataStoreState();
}

class _DataStoreState extends State<DataStore> {

  TextEditingController namectrl = TextEditingController();
  TextEditingController phonectrl = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Register')),
      ),
      
      body: Padding(padding: EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextFormField(
                controller: namectrl,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  filled: true,
                  labelText: 'Enter name',
                  hintText: 'Full Name',
                  icon: Icon(Icons.person),
                ),
              ),
              SizedBox(height: 30,),
              TextFormField(
                controller: phonectrl,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  filled: true,
                  labelText: 'Enter Mobile Number',
                  hintText: 'Mobile Number',
                  icon: Icon(Icons.phone),
                ),
                keyboardType: TextInputType.phone,
              ),
              SizedBox(height: 30,),
              TextButton(
                onPressed: () {
                  DatabaseHelper.insertData(namectrl.text, phonectrl.text);
                },
                child: Text('Submit'),
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  textStyle: TextStyle(
                    fontSize: 20,
                  ),
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),

                ),),
              Container(

                height: 700,

                child: FutureBuilder(

                  future: DatabaseHelper.getData(),
                  builder: (context,snapshot) {

                    if(snapshot.hasData) {
                      return ListView.builder(
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return ListTile(
                              title: Text('Name ${snapshot.data[index]['n']}',),
                              subtitle: Text('Phone'),
                            );
                          });
                    }else {
                      Center(
                        child: Text('No Data'),
                      ),
                    };
                  },
                ),
              )
            ],

      ),
        ),),
    );
  }
}

