// Include all the required files
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Bottom Nav for privacy and terms
class BottomNav extends StatelessWidget {
  const BottomNav({
    Key key,
    @required this.textColor,
  }) : super(key: key);

  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, "/privacy"),
            child: Text(
              "Privacy Policy",
              style: GoogleFonts.merriweather(
                color: textColor,
              ),
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, "/terms"),
            child: Text(
              "Terms of Services",
              style: GoogleFonts.merriweather(
                color: textColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
