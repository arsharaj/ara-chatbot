// Include all the required files
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ara_chatbot/utils/colors.dart';
import 'package:ara_chatbot/utils/text_styles.dart';

// Light theme for Ara
ThemeData lightTheme = ThemeData(
  primaryColor: primaryColorLight,
  accentColor: accentColorLight,
  backgroundColor: backgroundColorLight,
  textTheme: mainTextTheme,
  cursorColor: backgroundColorDark,
  appBarTheme: AppBarTheme(
    textTheme: appbarTextThemeLight,
    iconTheme: IconThemeData(
      color: Colors.black,
      size: 22,
    ),
  ),
  iconTheme: IconThemeData(
    color: iconColor,
    size: 20,
  ),
  popupMenuTheme: PopupMenuThemeData(
    color: popupColorLight,
    elevation: 2,
    textStyle: GoogleFonts.roboto(
      color: Colors.black,
      fontSize: 18,
    ),
  ),
  visualDensity: VisualDensity.adaptivePlatformDensity,
);