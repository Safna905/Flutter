import 'package:flutter/material.dart';
import 'package:form_registrstion/Screens/database_helper.dart';
import 'package:form_registrstion/Screens/student_class.dart';

import 'form_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<List<Student>> _students;
  @override
  void initState() {
    super.initState();
    _students = DatabaseHelper.getAllStudents();
  }

  void _refreshStudents() {
    setState(() {
      _students = DatabaseHelper.getAllStudents();
    });
  }

  void _navigateToStudentForm(BuildContext context, [Student? student]) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => StudentFormPage(student!),
      ),
    );
    if (result == true) {
      _refreshStudents();
    }
  }

@override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Students'),
      ),

      body: FutureBuilder<List<Student>>(
        future: _students,
        builder: (context, snapshot) {
          if(snapshot.hasData) {
            final students = snapshot.data;

            if(students!.isEmpty) {
              return Center(
                child: Text('No students'),
              );
            }
            return ListView.builder(
                itemCount: students.length,
                itemBuilder: (context, index) {
                  final student = students[index];
                  return ListTile(
                    title: Text(student.name),
                    subtitle: Text(student.class_n),
                    trailing: IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () async {
                        await DatabaseHelper.deleteStudent(student.id);
                        _refreshStudents();
                      },
                    ),
                    onTap: () {
                      _navigateToStudentForm(context, student);
                    },
                  );
                },
            );
          }
          else if(snapshot.hasError) {
            return Center(
              child: Text('Error:${snapshot.error}'),
            );
          }
          else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          _navigateToStudentForm(context);
        },
      ),
    );
  }
}
