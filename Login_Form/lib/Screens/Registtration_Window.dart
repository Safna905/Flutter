import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class ShowRegisterPage extends StatefulWidget {



  @override
  State<ShowRegisterPage> createState() => _ShowRegisterPageState();
}

class _ShowRegisterPageState extends State<ShowRegisterPage> {
  TextEditingController namectrl = TextEditingController();
  TextEditingController phonectrl = TextEditingController();

  var uuid = Uuid();
  var uid;

  @override
  void initState() {
    uid = uuid.v4();
    print(uid);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Registration Form'),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 25.0,
            right: 10.0,
            bottom: 25.0,
            left: 10.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextFormField(
                onChanged: (val) {
                  setState(() {});
                },
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
                onChanged: (val) {
                  setState(() {});
                },

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
              // Padding(
              //     padding: EdgeInsets.only(bottom: 30.0)
              // ),
              // TextFormField(
              //   decoration: const InputDecoration(
              //     border: OutlineInputBorder(),
              //     filled: true,
              //     labelText: 'Enter Email',
              //     hintText: 'Email ID',
              //     icon: Icon(Icons.email),
              //   ),
              //   keyboardType: TextInputType.emailAddress,
              // ),
              // SizedBox(height: 30,),
              // TextFormField(
              //   decoration: const InputDecoration(
              //     border: OutlineInputBorder(),
              //     filled: true,
              //     labelText: 'Enter Address',
              //     hintText: 'Address',
              //     icon: Icon(Icons.location_on),
              //   ),
              //   maxLines: 4,
              // ),
              // SizedBox(height: 30,),
              // TextFormField(
              //   decoration: const InputDecoration(
              //     border: OutlineInputBorder(),
              //     filled: true,
              //     labelText: 'Enter Password',
              //     hintText: 'Password',
              //     icon: Icon(Icons.vpn_key),
              //   ),
              //   obscureText: true,
              // ),
              // SizedBox(height: 30,),
              // TextFormField(
              //   decoration: const InputDecoration(
              //     border: OutlineInputBorder(),
              //     filled: true,
              //     labelText: 'Confirm Password',
              //     hintText: 'Confirm Password',
              //     icon: Icon(Icons.vpn_key),
              //   ),
              //   obscureText: true,
              // ),
              SizedBox(height: 30,),
              TextButton(


                  onPressed: () {
                    print(uid);

                    _addStudent();
                    // FirebaseFirestore.instance.collection('User1').doc(uid).set({
                    //  'user_id' : uid,
                    //  'name': namectrl.text,
                    //   'phone': phonectrl.text,
                    //   'createdAt':DateTime.now(),
                    //   'status':1,
                    // });
                    // setState(() {});
                  },
                  child: Text('Register'),
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

            ],
          ),
        ),
      ),

    );
  }

  void _addStudent() async {
    // Get a reference to the Firestore collection where you want to store the student's data
    final CollectionReference studentCollection = FirebaseFirestore.instance.collection('User1');

    // Create a map object with the student's details
    final Map<String, dynamic> studentData = {
      'user_id' : uid,
       'name': namectrl.text,
        'phone': phonectrl.text,
        'createdAt':DateTime.now(),
        'status':1,
    };

    // Add the student's data as a new document in the collection
    await studentCollection.add(studentData);
  }
}




