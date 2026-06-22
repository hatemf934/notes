import 'package:notabli/constant.dart';
import 'package:notabli/core/services/hive_services.dart';
import 'package:notabli/features/home/data/repo/layout_repo.dart';

class LayoutRepoImplement extends LayoutRepo {
  final HiveServices hiveServices;

  LayoutRepoImplement({required this.hiveServices});
  @override
  Future<void> putLayout({required bool isGrid, required String key}) async {
    await hiveServices.putData(boxName: kTheme, data: isGrid, key: key);
  }

  @override
  bool getLayout({required bool isGrid, required String key}) {
    return hiveServices.getData<bool>(boxName: kTheme, key: key) ?? false;
  }
}
