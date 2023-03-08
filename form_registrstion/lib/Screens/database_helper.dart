import 'package:form_registrstion/Screens/student_class.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static late Database _database;
  static Future<Database> get database async {
    if (_database != null) return _database;
    _database = await _initDatabase();
    return _database;
  }

  static Future<Database> _initDatabase() async {
    String path = join(await getDatabasesPath(), 'students.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute(''
            'CREATE TABLE students('
            'id INTEGER PRIMARY KEY,'
            'name TEXT,'
            'age INTEGER,'
            'phone TEXT,'
            'email TEXT,'
            'class TEXT )'
            '');
      },
    );
  }

  static Future<int> insertStudent(Student student) async {
    final db = await database;
    return await db.insert('students', student.toMap());
  }

  static Future<List<Student>> getAllStudents () async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query('students');
    return List.generate(maps.length, (i) {
      return Student.fromMap(maps [i]);
    }
    );
  }

  static Future<int> updateStudent(Student student) async {
    final db = await database;
    return await db.update(''
        'students',
        student.toMap(),
        where: 'id = ?',
    whereArgs: [student.id]);
  }

  static Future<int> deleteStudent(int id) async {
    final db = await database;
    return await db.delete('students',
    where: 'id = ?',
    whereArgs: [id],);
  }
}

