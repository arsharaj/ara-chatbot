// Import all the required files
import 'package:flutter/material.dart';
import 'package:ara_chatbot/utils/colors.dart';
import 'package:ara_chatbot/utils/card_template.dart';
import 'package:ara_chatbot/utils/terms_data.dart';

// Privacy policy of the app is rendered here.
class TermsOfServices extends StatelessWidget {
  // Title of the privacy screen
  final String title;

  TermsOfServices({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color backgroundColor =
        (MediaQuery.of(context).platformBrightness == Brightness.light)
            ? backgroundColorLight
            : backgroundColorDark;

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
            status: 0,
          ),
          // Termination
          CardTemplate(
            heading: terminationHeading,
            body: terminationBody,
            status: 1,
          ),
          // Content
          CardTemplate(
            heading: contentHeading,
            body: contentBody,
            status: 0,
          ),
          // Links
          CardTemplate(
            heading: linkHeading,
            body: linkBody,
            status: 1,
          ),
          // Changes
          CardTemplate(
            heading: changesHeading,
            body: changesBody,
            status: 0,
          ),
          // Contact Me
          CardTemplate(
            heading: contactHeading,
            body: contactBody,
            status: 1,
          ),
        ],
      ),
    );
  }
}
