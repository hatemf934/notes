import 'package:bloc/bloc.dart';

part 'themetext_state.dart';

class ThemetextCubit extends Cubit<ThemeTextCubitState> {
  ThemetextCubit() : super(ThemeTextCubitState.Medium);

  changeSmallText() {
    if (state == ThemeTextCubitState.Medium ||
        state == ThemeTextCubitState.Large) {
      emit(ThemeTextCubitState.Small);
    }
  }

  changeMediumText() {
    if (state == ThemeTextCubitState.Small ||
        state == ThemeTextCubitState.Large) {
      emit(ThemeTextCubitState.Medium);
    }
  }

  changeLargeText() {
    if (state == ThemeTextCubitState.Small ||
        state == ThemeTextCubitState.Medium) {
      emit(ThemeTextCubitState.Large);
    }
  }
}
