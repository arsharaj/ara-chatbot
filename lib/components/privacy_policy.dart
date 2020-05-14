// Import all the required files
import 'package:flutter/material.dart';
import 'package:ara_chatbot/utils/colors.dart';
import 'package:ara_chatbot/utils/privacy_card.dart';

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
          PrivacyCard(
            heading: "Test",
            body: "Test the policy card",
          ),
        ],
      ),
    );
  }
}