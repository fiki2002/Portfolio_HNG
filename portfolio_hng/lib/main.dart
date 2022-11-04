import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_hng/theme/app_colors.dart';
import 'package:portfolio_hng/views/splash_screen.dart';

void main() {
  runApp(
    const HNGApp(),
  );
}

class HNGApp extends StatelessWidget {
  const HNGApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      darkTheme: AppColors.darkTheme,
      home: const SplashScreen(),
      theme: AppColors.lightTheme,
    );
  }
}
