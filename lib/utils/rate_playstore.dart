// Include all the required files
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Rate the app on the playstore
class RatePlaystore extends StatelessWidget {
  const RatePlaystore({
    Key key,
    @required this.textColor,
    @required this.buttonColor,
    @required this.buttonTextColor,
  }) : super(key: key);

  final Color textColor;
  final Color buttonColor;
  final Color buttonTextColor;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            "How much do you like Ara?",
            style: GoogleFonts.merriweather(
              color: textColor,
              fontSize: 20,
            ),
          ),
          SizedBox(height: 10),
          RaisedButton(
            onPressed: () {},
            child: Text(
              "Rate on Google Playstore",
            ),
            color: buttonColor,
            textColor: buttonTextColor,
          ),
        ],
      ),
    );
  }
}
