import 'package:flutter/material.dart';

class AppColors {
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: const Color(0xff2A2A2A),
    colorScheme: const ColorScheme.dark(),
    backgroundColor: const Color(0xff2A2A2A),
  );

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: const Color(0xffE9F1F7),
    primaryColorLight: const Color(0xff292D32),
    colorScheme: const ColorScheme.light(),
    backgroundColor: const Color(0xffEAEAEA),
    cardColor: const Color(0xffDAD9D9),

  );
}
