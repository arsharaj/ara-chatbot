// Include all the required files
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ara_chatbot/utils/colors.dart';
import 'package:ara_chatbot/utils/text_styles.dart';

// Dark theme for Ara
ThemeData darkTheme = ThemeData(
  primaryColor: primaryColorDark,
  accentColor: accentColorDark,  
  backgroundColor: backgroundColorDark,
  textTheme: mainTextTheme,
  appBarTheme: AppBarTheme(
    textTheme: appbarTextThemeDark,
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
      color: Colors.white,
      fontSize: 18,
    ),
  ),
  visualDensity: VisualDensity.adaptivePlatformDensity,
);