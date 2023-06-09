import 'package:gpt_resume_generator/services/sqlite_db_service.dart';
import 'package:gpt_resume_generator/utils/local_datasource_interface.dart';

class LocalDataSource extends ILocalDatasource {
  final service = SqliteDatabaseService();

  @override
  Future<String?> getGptApiKey() async {
    final db = await service.database;
    final result = await db.rawQuery('SELECT * from apikey');
    print(result);
    return null;
  }

  @override
  Future<void> getStoredResumeData() {
    // TODO: implement getStoredResumeData
    throw UnimplementedError();
  }

  setApiKey(String key) async {
    // TODO: implement setApiKey
    throw UnimplementedError();
  }
}
