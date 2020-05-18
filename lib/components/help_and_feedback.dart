// Include all the required files
import 'package:flutter/material.dart';
import 'package:ara_chatbot/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';

// Help and Feedback Screen with some user interaction
class HelpAndFeedback extends StatelessWidget {
  // The title of the application
  final String title;
  // Controller for the textfield for handling text
  final TextEditingController controller = TextEditingController();

  // Constructor
  HelpAndFeedback({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color backgroundColor =
        (MediaQuery.of(context).platformBrightness == Brightness.light)
            ? backgroundColorLight
            : backgroundColorDark;
    final Color textColor =
        (MediaQuery.of(context).platformBrightness == Brightness.light)
            ? textColorLight
            : textColorDark;
    final Color buttonTextColor =
        (MediaQuery.of(context).platformBrightness == Brightness.dark)
            ? textColorLight
            : textColorDark;
    final Color buttonColor =
        (MediaQuery.of(context).platformBrightness == Brightness.dark)
            ? accentColorDark
            : accentColorLight;

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: Text(title),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Descibe an issue",
              style: GoogleFonts.merriweather(
                fontSize: 16,
                color: textColor,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: (MediaQuery.of(context).size.width) - 90,
                  child: TextFormField(
                    autocorrect: true,
                    controller: controller,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: Icon(Icons.clear),
                        onPressed: () => controller.clear(),
                      ),
                      border: InputBorder.none,
                      fillColor: accentColorDark,
                      filled: true,
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  color: buttonColor,
                  onPressed: () {
                    // TODO
                    if (controller.text == "") {
                      print("Empty text field!!");
                    } else {
                      print(controller.text);
                    }
                    controller.text = "";
                  },
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Center(
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
            ),
            Expanded(
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
            ),
          ],
        ),
      ),
    );
  }
}