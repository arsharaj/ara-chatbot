// Include all the required files
import 'package:flutter/material.dart';
import 'package:ara_chatbot/utils/bottom_nav.dart';
import 'package:ara_chatbot/utils/create_issue.dart';
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
    // Some theme color tweaks
    final Color backgroundColor =
        (MediaQuery.of(context).platformBrightness == Brightness.light)
            ? backgroundColorLight
            : backgroundColorDark;
    final Color textColor =
        (MediaQuery.of(context).platformBrightness == Brightness.light)
            ? textColorLight
            : textColorDark;
    final Color buttonColor =
        (MediaQuery.of(context).platformBrightness == Brightness.dark)
            ? accentColorDark
            : accentColorLight;
    // final Color buttonTextColor =
    //     (MediaQuery.of(context).platformBrightness == Brightness.dark)
    //         ? textColorLight
    //         : textColorDark;

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
              "Describe your issue",
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
                    if (controller.text != "") {
                      CreateIssue newIssue = CreateIssue(data: controller.value.text);
                      newIssue.sendIssue();
                    }
                    controller.text = "";
                  },
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            // TODO
            // RatePlaystore(textColor: textColor, buttonColor: buttonColor, buttonTextColor: buttonTextColor),
            BottomNav(textColor: textColor),
          ],
        ),
      ),
    );
  }
}
