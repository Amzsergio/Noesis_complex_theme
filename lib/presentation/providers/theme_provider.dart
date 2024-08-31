import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:noesis_theme/config/theme/app_theme.dart';

final colorListProvider = Provider((ref) => colorList);

final isDarkmodeProvider = StateProvider((ref) => false);

final selectedColorProvider = StateProvider((ref) => 0);
