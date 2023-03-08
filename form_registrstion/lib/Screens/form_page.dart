import 'package:flutter/material.dart';
import 'package:form_registrstion/Screens/database_helper.dart';
import 'package:form_registrstion/Screens/student_class.dart';

class StudentFormPage extends StatefulWidget {
  final Student student;

  StudentFormPage(this.student);

  @override
  State<StudentFormPage> createState() => _StudentFormPageState();
}

class _StudentFormPageState extends State<StudentFormPage> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _ageController = TextEditingController();
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();
  final _classController = TextEditingController();

  @override
  void initState() {
    super.initState();

    if (widget.student != null) {
      _nameController.text = widget.student.name;
      _ageController.text = widget.student.age.toString();
      _phoneController.text = widget.student.phone;
      _emailController.text = widget.student.email;
      _classController.text = widget.student.class_n;
    }
  }

  void _submitForm() async {
    if (_formKey.currentState!.validate()) {
      final name = _nameController.text;
      final age = int.parse(_ageController.text);
      final phone = _phoneController.text;
      final email = _emailController.text;
      final clas = _classController.text;

      if (widget.student == null) {
        await DatabaseHelper.insertStudent(Student(
          id: widget.student.id,
          name: name,
          age: age,
          phone: phone,
          email: email,
          class_n: clas,
        ));
      } else {
        await DatabaseHelper.updateStudent(Student(
            id: widget.student.id,
            name: name,
            age: age,
            phone: phone,
            email: email,
            class_n: clas));
      }
      Navigator.pop(context, true);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.student == null ? 'New Student' : 'Edit Student'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(labelText: 'Name'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a name';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _ageController,
                decoration: InputDecoration(
                  labelText: 'Age',),
                keyboardType: TextInputType.number,
                validator:  (value) {
                  if (value!.isEmpty) {
                    return'Please enter an age';
                  }
                  return null;
                },
              ),

              TextFormField(
                controller: _phoneController,
                decoration: InputDecoration(
                  labelText: 'Phone',),
                keyboardType: TextInputType.phone,
              ),

              TextFormField(
                controller:_emailController,
                decoration: InputDecoration(
                  labelText: 'Email',),
                keyboardType: TextInputType.emailAddress,
              ),

              TextFormField(
                controller: _classController,
                decoration: InputDecoration(
                  labelText: 'Class',),
              ),

              SizedBox(height: 16.0,),
              ElevatedButton(
                  onPressed: _submitForm,
                  child: Text('Save'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
