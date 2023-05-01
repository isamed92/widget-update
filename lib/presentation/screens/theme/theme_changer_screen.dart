import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

class ThemeChangerScreen extends ConsumerWidget {
  const ThemeChangerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final isDarkMode = ref.watch(isDarkModeProvider);
    final isDarkMode = ref.watch(themeNotifierProvider).isDarkmode;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme changer'),
        actions: [
          IconButton(
              onPressed: () {
                // ref.read(isDarkModeProvider.notifier).state = !isDarkMode;
                ref.read(themeNotifierProvider.notifier).toggleDarkMode();
              },
              icon: Icon(isDarkMode
                  ? Icons.dark_mode_outlined
                  : Icons.light_mode_outlined))
        ],
      ),
      body: _ThemeChangerView(),
    );
  }
}

class _ThemeChangerView extends ConsumerWidget {
  const _ThemeChangerView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<Color> colors = ref.watch(colorListProvider);
    // final int selectedColor = ref.watch(selectedColorProvider);
    final int selectedColor = ref.watch(themeNotifierProvider).selectedColor;

    return ListView.builder(
      itemCount: colors.length,
      itemBuilder: (context, index) {
        final Color color = colors[index];
        return RadioListTile(
          title: Text(
            'Este color',
            style: TextStyle(color: color),
          ),
          subtitle: Text('#${color.value}'),
          activeColor: color,
          value: index,
          groupValue: selectedColor,
          onChanged: (value) {
            // ref.read(selectedColorProvider.notifier).state = value!;
            ref.read(themeNotifierProvider.notifier).changeColorIndex(value!);
          },
        );
      },
    );
  }
}
