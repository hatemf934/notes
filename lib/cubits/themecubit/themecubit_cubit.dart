import 'package:bloc/bloc.dart';

part 'themecubit_state.dart';

class ThemeCubit extends Cubit<ThemeCubitState> {
  ThemeCubit() : super(ThemeCubitState.Light);

  changedarkTheme() {
    if (state == ThemeCubitState.Light) {
      emit(ThemeCubitState.Dark);
    }
  }

  changelightTheme() {
    if (state == ThemeCubitState.Dark) {
      emit(ThemeCubitState.Light);
    }
  }
}
