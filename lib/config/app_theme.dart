import 'package:flutter/material.dart';

class CatppuccinPalette {
  final Color rosewater;
  final Color flamingo;
  final Color pink;
  final Color mauve;
  final Color red;
  final Color maroon;
  final Color peach;
  final Color yellow;
  final Color green;
  final Color teal;
  final Color sky;
  final Color sapphire;
  final Color blue;
  final Color lavender;
  final Color text;
  final Color subtext1;
  final Color subtext0;
  final Color overlay2;
  final Color overlay1;
  final Color overlay0;
  final Color surface2;
  final Color surface1;
  final Color surface0;
  final Color base;
  final Color mantle;
  final Color crust;

  const CatppuccinPalette({
    required this.rosewater,
    required this.flamingo,
    required this.pink,
    required this.mauve,
    required this.red,
    required this.maroon,
    required this.peach,
    required this.yellow,
    required this.green,
    required this.teal,
    required this.sky,
    required this.sapphire,
    required this.blue,
    required this.lavender,
    required this.text,
    required this.subtext1,
    required this.subtext0,
    required this.overlay2,
    required this.overlay1,
    required this.overlay0,
    required this.surface2,
    required this.surface1,
    required this.surface0,
    required this.base,
    required this.mantle,
    required this.crust,
  });

  static const mocha = CatppuccinPalette(
    rosewater: Color(0xFFF5E0DC),
    flamingo: Color(0xFFF2CDCD),
    pink: Color(0xFFF5C2E7),
    mauve: Color(0xFFCBA6F7),
    red: Color(0xFFF38BA8),
    maroon: Color(0xFFEBA0AC),
    peach: Color(0xFFFAB387),
    yellow: Color(0xFFF9E2AF),
    green: Color(0xFFA6E3A1),
    teal: Color(0xFF94E2D5),
    sky: Color(0xFF89DCEB),
    sapphire: Color(0xFF74C7EC),
    blue: Color(0xFF89B4FA),
    lavender: Color(0xFFB4BEFE),
    text: Color(0xFFCDD6F4),
    subtext1: Color(0xFFBAC2DE),
    subtext0: Color(0xFFA6ADC8),
    overlay2: Color(0xFF9399B2),
    overlay1: Color(0xFF7F849C),
    overlay0: Color(0xFF6C7086),
    surface2: Color(0xFF585B70),
    surface1: Color(0xFF45475A),
    surface0: Color(0xFF313244),
    base: Color(0xFF1E1E2E),
    mantle: Color(0xFF181825),
    crust: Color(0xFF11111B),
  );

  static const latte = CatppuccinPalette(
    rosewater: Color(0xFFDC8A78),
    flamingo: Color(0xFFDD7878),
    pink: Color(0xFFEA76CB),
    mauve: Color(0xFF8839EF),
    red: Color(0xFFD20F39),
    maroon: Color(0xFFE64553),
    peach: Color(0xFFFE640B),
    yellow: Color(0xFFDF8E1D),
    green: Color(0xFF40A02B),
    teal: Color(0xFF179299),
    sky: Color(0xFF04A5E5),
    sapphire: Color(0xFF209FB5),
    blue: Color(0xFF1E66F5),
    lavender: Color(0xFF7287FD),
    text: Color(0xFF4C4F69),
    subtext1: Color(0xFF5C5F77),
    subtext0: Color(0xFF6C6F85),
    overlay2: Color(0xFF7C7F93),
    overlay1: Color(0xFF8C8FA1),
    overlay0: Color(0xFF9CA0B0),
    surface2: Color(0xFFACB0BE),
    surface1: Color(0xFFBCC0CC),
    surface0: Color(0xFFCCD0DA),
    base: Color(0xFFEFF1F5),
    mantle: Color(0xFFE6E9EF),
    crust: Color(0xFFDCE0E8),
  );
}

class CatppuccinTheme {
  static ThemeData _createTheme(
      CatppuccinPalette palette, Brightness brightness) {
    return ThemeData(
      brightness: brightness,
      primaryColor:
          brightness == Brightness.dark ? palette.yellow : palette.sky,
      scaffoldBackgroundColor: palette.base,
      appBarTheme: AppBarTheme(
        backgroundColor: palette.base,
        foregroundColor: palette.text,
      ),
      colorScheme: ColorScheme(
        brightness: brightness,
        primary: brightness == Brightness.dark ? palette.mauve : palette.sky,
        secondary: brightness == Brightness.dark ? palette.pink : palette.text,
        surface: palette.base,
        error: palette.red,
        onPrimary: palette.base,
        onSecondary: palette.crust,
        onSurface: palette.text,
        onError: palette.crust,
      ),
      cardTheme: CardTheme(
        color: palette.mantle,
        shadowColor: brightness == Brightness.dark
            ? Colors.black
            : palette.text.withOpacity(0.4),
      ),
      textTheme: TextTheme(
        titleLarge: TextStyle(color: palette.text),
        titleMedium: TextStyle(color: palette.text),
        headlineMedium: TextStyle(color: palette.text),
        headlineSmall: TextStyle(color: palette.text),
        bodyLarge: TextStyle(color: palette.text),
        bodyMedium: TextStyle(color: palette.subtext1),
      ),
      splashColor: (brightness == Brightness.dark ? palette.mauve : palette.sky)
          .withOpacity(0.3),
      highlightColor: Colors.transparent,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: palette.sapphire,
          foregroundColor: palette.crust,
        ),
      ),
      shadowColor: brightness == Brightness.dark
          ? Colors.black.withOpacity(0.5)
          : palette.text.withOpacity(0.4),
    );
  }

  static ThemeData get darkTheme =>
      _createTheme(CatppuccinPalette.mocha, Brightness.dark);
  static ThemeData get lightTheme =>
      _createTheme(CatppuccinPalette.latte, Brightness.light);
}
