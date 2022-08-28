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
  headline1: textStyle,
  headline2: textStyle,
  headline3: textStyle,
  headline4: textStyle,
  headline5: textStyle,
  headline6: textStyle,
  subtitle1: textStyle,
  subtitle2: textStyle,
  bodyText1: textStyle,
  bodyText2: textStyle,
  caption: textStyle,
  button: textStyle,
  overline: textStyle,
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
