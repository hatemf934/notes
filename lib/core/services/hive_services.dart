import 'package:hive/hive.dart';
import 'package:notabli/core/services/local_data_base_services.dart';
import 'package:notabli/core/utils/text_manager.dart';

class HiveServices extends LocalDatabaseServices {
  @override
  Future<void> putData<T>({required String boxName, required T data}) async {
    var box = Hive.box<T>(boxName);
    await box.put(TextManager.kIsMeduim, data);
  }

  @override
  getData<T>({required String boxName}) {
    final box = Hive.box<T>(boxName);
    return box.get(TextManager.kIsMeduim);
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
