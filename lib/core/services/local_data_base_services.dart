abstract class LocalDatabaseServices {
  Future<void> putData<T>({required String boxName, required T data});
  Future<void> addData<T>({required String boxName, required T data});

  getData<T>({required String boxName});
  List<T> getListData<T>({required String boxName});
}
