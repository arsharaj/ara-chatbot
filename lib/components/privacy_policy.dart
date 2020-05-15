// Import all the required files
import 'package:flutter/material.dart';
import 'package:ara_chatbot/utils/colors.dart';
import 'package:ara_chatbot/utils/card_template.dart';
import 'package:ara_chatbot/utils/privacy_data.dart';

// Privacy policy of the app is rendered here.
class PrivacyPolicy extends StatelessWidget {
  // Title of the privacy screen
  final String title;
  
  PrivacyPolicy({Key key, this.title}):super(key:key);

  @override
  Widget build(BuildContext context) {

    final Color backgroundColor = (MediaQuery.of(context).platformBrightness == Brightness.light) ? backgroundColorLight : backgroundColorDark;

    return Scaffold(
      backgroundColor: backgroundColor, 
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView(
        children: <Widget>[
          // Update Date and Abstract Intro
          CardTemplate(
            heading: updateDate,
            body: abstractIntro,
            status: 1,
          ),
          // Introduction
          CardTemplate(
            heading: introHeading,
            body: introBody,
            status: 0,
          ),
          // Log Data
          CardTemplate(
            heading: logHeading,
            body: logBody,
            status: 1,
          ),
          // Communications
          CardTemplate(
            heading: commHeading,
            body: commBody,
            status: 0,
          ),
          // Cookies
          CardTemplate(
            heading: cookieHeading,
            body: cookieBody,
            status: 1,
          ),
          // Security
          CardTemplate(
            heading: securityHeading,
            body: securityBody,
            status: 0,
          ),
          // Changes
          CardTemplate(
            heading: changesHeading,
            body: changesBody,
            status: 1,
          ),
          // Contact Me
          CardTemplate(
            heading: contactHeading,
            body: contactBody,
            status: 0,
          ),
        ],
      ),
    );
  }
}