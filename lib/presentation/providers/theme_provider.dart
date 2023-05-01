import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

final isDarkModeProvider = StateProvider((ref) => false);

// listado de colores inmutable
final colorListProvider = Provider((ref) => colorList);

//un simple int
final selectedColorProvider = StateProvider((ref) => 0);

final themeNotifierProvider =
    StateNotifierProvider<ThemeNotifier, AppTheme>((ref) => ThemeNotifier());

class ThemeNotifier extends StateNotifier<AppTheme> {
  ThemeNotifier() : super(AppTheme());

  void toggleDarkMode() {
    state = state.copyWith(isDarkmode: !state.isDarkmode);
  }

  void changeColorIndex(int seletedIndex) {
    state = state.copyWith(selectedColor: seletedIndex);
  }
}
