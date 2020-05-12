// Include all the required files
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'colors.dart';

// Dark theme for Ara
ThemeData darkTheme = ThemeData(
  primaryColor: primaryColorDark,
  accentColor: accentColorDark,  
  backgroundColor: backgroundColorDark,
  appBarTheme: AppBarTheme(
    iconTheme: IconThemeData(
      color: Colors.white,
      size: 22,
    ),
  ),
  iconTheme: IconThemeData(
    color: iconColor,
    size: 20,
  ),
  popupMenuTheme: PopupMenuThemeData(
    color: popupColorDark,
    elevation: 2,
    textStyle: GoogleFonts.roboto(
      color: Colors.black,
      fontSize: 18,
    ),
  ),
  visualDensity: VisualDensity.adaptivePlatformDensity,
);