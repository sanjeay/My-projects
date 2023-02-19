import 'package:sqflite/sqflite.dart' as sql;

class sqloperations {
  static Future<sql.Database> db() async {
    return sql.openDatabase("Mydatabase.db", version: 1,
        onCreate: (sql.Database database, int version) async {
      await createtable(database);
    });
  }

  static Future<void>createtable(sql.Database database) async{
    await database.execute('CREATE TABLE table (id INTEGER PRIMARY KEY NOT NULL AUTO INCREMENT, title TEXT, description TEXT, num REAL)');
  }

  static Future<List<Map<String,dynamic>>> gettable() async{
    final db= await sqloperations.db();
    return db.query("table",orderBy: 'id');
  }

  static createitem(String title, String description) async{
    final db= await sqloperations.db();
    final data ={'title':title,'description':description};
    final id=await db.insert('table', data);
  }
}
