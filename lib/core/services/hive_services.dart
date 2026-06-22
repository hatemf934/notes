import 'package:hive/hive.dart';
import 'package:notabli/core/services/local_data_base_services.dart';

class HiveServices extends LocalDatabaseServices {
  @override
  Future<void> putData<T>(
      {required String boxName, required T data, required String key}) async {
    var box = Hive.box<T>(boxName);
    await box.put(key, data);
  }

  @override
  getData<T>({required String boxName, required String key}) {
    final box = Hive.box<T>(boxName);
    return box.get(key);
  }

  @override
  Future<void> addData<T>({required String boxName, required T data}) async {
    var box = Hive.box<T>(boxName);
    await box.add(data);
  }

  @override
  List<T> getListData<T>({required String boxName}) {
    var box = Hive.box<T>(boxName);
    return box.values.toList();
  }
}
