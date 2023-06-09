import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class SqliteDatabaseService {
  Database? _database;
  static final SqliteDatabaseService _instance =
      SqliteDatabaseService._internal();

  factory SqliteDatabaseService() {
    return _instance;
  }

  SqliteDatabaseService._internal();

  Future<Database> get database async {
    _database ??= await _init();
    return _database!;
  }

  Future<Database> _init() async {
    return await openDatabase(
      join(await getDatabasesPath(), 'gpt_resume_database.db'),
      onCreate: (db, version) {
        db.execute(
          "CREATE TABLE apikey(id INTEGER PRIMARY KEY, key TEXT);",
        );
      },
      version: 5,
    );
  }
}
