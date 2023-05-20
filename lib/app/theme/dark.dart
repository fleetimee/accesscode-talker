// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:google_fonts/google_fonts.dart';

// 🌎 Project imports:
import '../common/style.dart';

final textStyle = TextStyle(
    color: Colors.white,
    //fontFamily: GoogleFonts.poppinsTextTheme().headline6.fontFamily,
    fontFamily: GoogleFonts.poppins().fontFamily);
final textTheme = TextTheme(
  displayLarge: textStyle,
  displayMedium: textStyle,
  displaySmall: textStyle,
  headlineMedium: textStyle,
  headlineSmall: textStyle,
  titleLarge: textStyle,
  titleMedium: textStyle,
  titleSmall: textStyle,
  bodyLarge: textStyle,
  bodyMedium: textStyle,
  bodySmall: textStyle,
  labelLarge: textStyle,
  labelSmall: textStyle,
);

ThemeData darkTheme = ThemeData(
  colorScheme: ThemeData.dark().colorScheme.copyWith(
        primary: Colors.grey,
        onPrimary: Colors.white,
        secondary: Colors.white,
        onSecondary: Colors.white,
        onSurface: Colors.white,
        surface: Colors.white,
        background: Colors.white,
        error: Colors.red,
        onError: Colors.red,
      ),
  appBarTheme: const AppBarTheme(
    color: primaryColor,
  ),
  dividerColor: Colors.white,
  dividerTheme: const DividerThemeData(
    thickness: 1,
    color: Colors.white,
  ),
  buttonTheme: const ButtonThemeData(
    buttonColor: primaryColor,
  ),
  primaryTextTheme: textTheme,
  textTheme: textTheme,
  visualDensity: VisualDensity.adaptivePlatformDensity,
);
