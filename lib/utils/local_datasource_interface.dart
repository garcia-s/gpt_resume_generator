abstract class ILocalDatasource {
  Future<void> setApiKey(String key);
  Future<String?> getGptApiKey();
  Future<void> getStoredResumeData();
}
