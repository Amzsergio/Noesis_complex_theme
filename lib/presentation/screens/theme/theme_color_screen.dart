import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:noesis_theme/presentation/providers/theme_provider.dart';

class ThemeColorScreen extends StatelessWidget {
  const ThemeColorScreen({super.key});
  static const String name = 'theme-color-settings';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Color Settings"),
      ),
      body: const _ThemeColorScreen(),
    );
  }
}

class _ThemeColorScreen extends ConsumerStatefulWidget {
  const _ThemeColorScreen();

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      __ThemeColorScreenState();
}

class __ThemeColorScreenState extends ConsumerState<_ThemeColorScreen> {
  @override
  Widget build(BuildContext context) {
    final List<Color> colors = ref.watch(colorListProvider);
    final selectedColor = ref.watch(selectedColorProvider);

    return ListView.builder(
        itemCount: colors.length,
        itemBuilder: (BuildContext context, int index) {
          final color = colors[index];

          return RadioListTile(
              title: Text(
                'Este color',
                style: TextStyle(color: color),
              ),
              subtitle: Text('${color.value}'),
              value: index,
              groupValue: selectedColor,
              onChanged: (value) => setState(() {
                    if (value != null) {
                      ref.read(selectedColorProvider.notifier).state = index;
                    }
                  }));
        });
  }
}
