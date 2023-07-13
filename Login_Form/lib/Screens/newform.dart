

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class StudentForm extends StatefulWidget {


  @override
  _StudentFormState createState() => _StudentFormState();
}

class _StudentFormState extends State<StudentForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late String _name;
  late int _age;
  late String _email;
  late double _gpa;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Student'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Name',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a name';
                  }
                  return null;
                },
                onSaved: (value) {
                  _name = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Age',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter an age';
                  }
                  return null;
                },
                onSaved: (value) {
                  _age = int.parse(value!);
                },
                keyboardType: TextInputType.number,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter an email';
                  }
                  return null;
                },
                onSaved: (value) {
                  _email = value!;
                },
                keyboardType: TextInputType.emailAddress,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'GPA',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a GPA';
                  }
                  return null;
                },
                onSaved: (value) {
                  _gpa = double.parse(value!);
                },
                keyboardType: TextInputType.numberWithOptions(decimal: true),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    _addStudent();
                    // Navigator.pop(context);
                  }
                },
                child: Text('Add'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _addStudent() async {
    // Get a reference to the Firestore collection where you want to store the student's data
    final CollectionReference studentCollection = FirebaseFirestore.instance.collection('students');

    // Create a map object with the student's details
    final Map<String, dynamic> studentData = {
      'name': _name,
      'age': _age,
      'email': _email,
      'gpa': _gpa,
    };

    // Add the student's data as a new document in the collection
    await studentCollection.add(studentData);
  }
}