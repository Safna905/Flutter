import 'package:sqflite/sqflite.dart';

class DatabaseHelper{
  static late Database _database;

  static Future<Database> get database async{
    if (_database != null) return _database;
    _database = await _initDatabase();
    return _database;
  }

  static Future<Database> _initDatabase() async {
    String path = join(await getDatabasesPath(),
    'my_database.db');
    return await openDatabase(
        path,
    version: 1,
    onCreate: (db, version) async {
          await db.execute(
            'CREATE TABLE my_table (id INTEGER PRIMARY KEY,name TEXT, phone TEXT)',
          );
    },
    );
  }
  static Future<int> insertData (String name, String phone) async {
    final db = await database;
    return await db.insert('my_table', {'name' :name, 'phone' : phone});
  }

  static Future<List<Map<String,dynamic>>> getData() async {
    final db = await database;
    return await db.query('my_table');

  }

  static String join(String s, String t) {}
}