import 'package:get_it/get_it.dart';
import 'package:notabli/core/services/hive_services.dart';
import 'package:notabli/features/adding_note/data/repo/note_repo_implements.dart';

final getIt = GetIt.instance;
void setUp() {
  getIt.registerSingleton<HiveServices>(HiveServices());
  getIt.registerLazySingleton<NoteRepoImplements>(
    () => NoteRepoImplements(hiveServices: getIt<HiveServices>()),
  );
}
