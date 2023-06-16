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

  Future<Database> _init() async {}
}
