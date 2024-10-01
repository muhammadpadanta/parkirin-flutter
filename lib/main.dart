import 'package:flutter/material.dart';
import 'package:parkirin/features/onboarding/views/onboarding_main.dart';
import 'config/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Parkirin',
      theme: CatppuccinTheme.lightTheme,
      darkTheme: CatppuccinTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: const OnboardingMainScreen(),
    );
  }
}
