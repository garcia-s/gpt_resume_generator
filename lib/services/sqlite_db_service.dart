import 'package:sqlite_async/sqlite_async.dart';

class SqliteDatabaseService {
  SqliteDatabase? _database;
  final _databasePath = 'gpt_database_path.db';
  final _migrations = SqliteMigrations()
    ..add(SqliteMigration(1, (tx) {
      tx.execute(
          'CREATE TABLE IF NOT EXISTS api_key(id INTEGER PRIMARY KEY, key TEXT)');
    }));

  static final SqliteDatabaseService _instance =
      SqliteDatabaseService._internal();

  factory SqliteDatabaseService() {
    return _instance;
  }

  SqliteDatabaseService._internal();

  Future<SqliteDatabase> get database async {
    if (_database != null) return _database!;
    _database = SqliteDatabase(path: _databasePath);
    await _migrations.migrate(_database!);
    return _database!;
  }
  
}
