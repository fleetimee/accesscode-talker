import 'package:fleetime/app/common/style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightTheme = ThemeData(
  colorScheme: ThemeData.light().colorScheme.copyWith(
        primary: primaryColor,
        onPrimary: Colors.white,
      ),
  visualDensity: VisualDensity.adaptivePlatformDensity,
  textTheme: GoogleFonts.mulishTextTheme(),
  scaffoldBackgroundColor: Colors.white,
);
