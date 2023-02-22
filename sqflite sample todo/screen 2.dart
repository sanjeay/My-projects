import 'package:flutter/widgets.dart';
import 'package:sqflite/sqflite.dart' as sql;

class Sqloperations {
  static Future<sql.Database> db() async {
    return sql.openDatabase('database.db', version: 1,
        onCreate: (sql.Database database, int version) async {
          await createtable(database);
        });
  }

  static Future<void> createtable(sql.Database database) async {
    await database.execute("""CREATE TABLE items(
        id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        title TEXT,
        description TEXT,
        createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
     )""");
  }

  static Future<List<Map<String, dynamic>>> getitems() async {
    final db = await Sqloperations.db();
    return db.query('item', orderBy: 'id');
  }

  static create_item(String title, String description) async {
    final db = await Sqloperations.db();
    final data = {'title': title, 'description': description};
    final id = await db.insert(
        'items', data, conflictAlgorithm: sql.ConflictAlgorithm.replace);
  }

  static Future<void> deleteitem(int id) async{
  final db =await Sqloperations.db();
  try{
    await db.delete('items',where: 'id=?',whereArgs: [id]);
  }catch(e){
    debugPrint("something went wrong $e");
  }
  }

  static Future<int> updateitem(int id, String title, String description) async{
    final db =await Sqloperations.db();
    final newdata ={
      'title':title,
      'description':description,
      'createdAt':DateTime.now().toString()
    };
    final result=db.update('items', newdata,where: 'id=?',whereArgs: [id]);
    return result;
  }


}