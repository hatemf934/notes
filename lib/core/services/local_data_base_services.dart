abstract class LocalDatabaseServices {
  Future<void> putData<T>(
      {required String boxName, required T data, required String key});
  Future<void> addData<T>({required String boxName, required T data});

  getData<T>({required String boxName, required String key});
  List<T> getListData<T>({required String boxName});
}
