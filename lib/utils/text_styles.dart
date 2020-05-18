// Include all the required files
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// App bar text theme light
TextTheme appbarTextThemeLight = TextTheme(
  headline6: GoogleFonts.merriweather(
    color: Colors.black,
    fontSize: 24,
    fontWeight: FontWeight.bold,
  ),
);

// App bar text theme dark
TextTheme appbarTextThemeDark = TextTheme(
  headline6: GoogleFonts.merriweather(
    color: Colors.white,
    fontSize: 24,
    fontWeight: FontWeight.bold,
  ),
);

// Main text theme
TextTheme mainTextTheme = TextTheme(
  bodyText1: GoogleFonts.roboto(),
  bodyText2: GoogleFonts.roboto(),
);
