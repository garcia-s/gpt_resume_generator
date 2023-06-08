abstract class ILocalDatasource {
  Future<String?> getGptApiKey();
  Future<void> getStoredResumeData();
}
