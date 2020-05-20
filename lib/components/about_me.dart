// Include all the required files
import 'package:flutter/material.dart';
import 'package:ara_chatbot/utils/about_me_data.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ara_chatbot/utils/bottom_nav.dart';
import 'package:ara_chatbot/utils/colors.dart';
import 'package:url_launcher/url_launcher.dart';

// About Me Screen of the application
class AboutMe extends StatelessWidget {
  // Title of the application
  final String title;

  AboutMe({Key key, this.title}) : super(key: key);

  // Launch github
  _launchGithub() async {
    const url = 'https://github.com/arsharaj';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  // Launch twitter
  _launchTwitter() async {
    const url = 'https://twitter.com/arsharajchauhan';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

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

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: Text(title),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Image(
              image: AssetImage('./assets/logo.png'),
              height: 70,
            ),
            SizedBox(height: 20),
            Text(
              "Ara",
              style: GoogleFonts.merriweather(
                color: textColor,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              "©2020 Arsharaj Chauhan",
              style: TextStyle(
                color: textColor,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              info,
              style: TextStyle(
                color: textColor,
              ),
            ),
            Text(
              "Connect with me",
              style: GoogleFonts.merriweather(
                color: textColor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              color: backgroundColorShadeLight,
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  GestureDetector(
                    onTap: _launchGithub,
                    child: Image(
                      image: AssetImage("./assets/github.png"),
                      height: 50,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    onTap: _launchTwitter,
                    child: Image(
                      image: AssetImage("./assets/twitter.png"),
                      height: 50,
                    ),
                  ),
                ],
              ),
            ),
            BottomNav(textColor: textColor),
          ],
        ),
      ),
    );
  }
}