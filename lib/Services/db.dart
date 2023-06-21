
/*
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:zrhonline/Models/usersmodel.dart';




class DbUtils {
  static final DbUtils _dbUtils = DbUtils._internal();
  DbUtils._internal();

  factory DbUtils() {
    return _dbUtils;
  }
 Database _db ;
  Future<Database> get db async {
    if (_db == null) {
      _db = await initializeDb();
    }
    return _db;
  }

  Future<Database> initializeDb() async {
    String path=join(await getDatabasesPath(), 'doggie_database.db');
    var dbDogs = await openDatabase(path, version: 1, onCreate: _createDb);
    return dbDogs;
  }

  void _createDb(Database db, int newVersion) async {
    await db.execute(
        "CREATE TABLE dogs(id INTEGER PRIMARY KEY, name TEXT, age INTEGER)");
  }

  Future<void> deleteTable() async {
    final Database db = await this.db;
    db.delete('dogs');
  }

  Future<void> insertDog(Customer customer) async {
    final Database db = await this.db;
    await db.insert(
      'dogs',
      customer.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<List<Customer>> customer() async {
    final Database db = await this.db;
    final List<Map<String, dynamic>> maps = await db.query('dogs');
    return List.generate(maps.length, (i) {
      return Customer(
        id: maps[i]['id'],
        name: maps[i]['name'],
        age: maps[i]['age'],
      );
    });
  }

  Future<void> updateDog(Customer customer) async {
    final db = await this.db;
    await db.update(
      'dogs',
      customer.toMap(),
      where: "id = ?",
      whereArgs: [customer.id],
    );
  }

  Future<void> deleteDog(int id) async {
    final db = await this.db;
    await db.delete(
      'customer',
      where: "id = ?",
      whereArgs: [id],
    );
  }



}*/