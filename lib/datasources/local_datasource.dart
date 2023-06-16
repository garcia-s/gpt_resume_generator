import 'package:gpt_resume_generator/services/sqlite_db_service.dart';
import 'package:gpt_resume_generator/utils/local_datasource_interface.dart';

class LocalDataSource extends ILocalDatasource {
  final service = SqliteDatabaseService();

  @override
  Future<String?> getGptApiKey() async {
    final database = await service.database;
    final result = await database.get('SELECT * FROM api_key');
    return result.toString();
  }

  @override
  Future<void> getStoredResumeData() {
    // TODO: implement getStoredResumeData
    throw UnimplementedError();
  }

  Future<void> setApiKey(String key) async {
    // TODO: implement setApiKey
    throw UnimplementedError();
  }

  Future<void> getExperienceItems() async {
    // TODO: implement getExperienceItems
    throw UnimplementedError();
  }

  Future<void> getPersonalInformation() async {
    // TODO: implement getPersonalInformation
    throw UnimplementedError();
  }

  Future<void> savePersonalInformation() async {}
}
