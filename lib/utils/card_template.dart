// Include all the required files.
import 'package:flutter/material.dart';
import 'package:ara_chatbot/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';

// Skeleton of the card in privacy policy.
class CardTemplate extends StatelessWidget {
  // Body and Headline of the privacy card
  final String heading, body;
  // For alternate background color
  final int status;

  // Initialization of colors in the privacy
  CardTemplate({this.heading, this.body, this.status});

  @override
  Widget build(BuildContext context) {
    final backgroundColorShade =
        (MediaQuery.of(context).platformBrightness == Brightness.light)
            ? backgroundColorShadeLight
            : backgroundColorShadeDark;
    final backgroundColor =
        (MediaQuery.of(context).platformBrightness == Brightness.light)
            ? backgroundColorLight
            : backgroundColorDark;
    final textColor =
        (MediaQuery.of(context).platformBrightness == Brightness.light)
            ? textColorLight
            : textColorDark;

    return Container(
      color: (status == 1) ? backgroundColorShade : backgroundColor,
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            heading,
            style: GoogleFonts.merriweather(
              color: textColor,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            body,
            style: TextStyle(
              color: textColor,
            ),
          ),
        ],
      ),
    );
  }
}
