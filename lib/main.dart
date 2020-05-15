// Include all the required files
// Built in Libraries
import 'package:flutter/material.dart';
// Utils
import 'package:ara_chatbot/utils/light_theme.dart';
import 'package:ara_chatbot/utils/dark_theme.dart';

// Custom components screens library
import 'package:ara_chatbot/components/home_page.dart';
import 'package:ara_chatbot/components/privacy_policy.dart';
import 'package:ara_chatbot/components/terms_of_services.dart';

// Main function - Starting point of the program.
void main() {
  runApp(MyApp());
}

// MyApp - Starting widget of the app
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // Use the material app theming and design.
    return MaterialApp(
      title: 'Ara', // Main title of the application
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      // All the routes to the app screens
      routes: {
        '/':(context) => HomePage(title:'Ara',),
        '/settings':(context) => Scaffold(),
        '/help':(context) => Scaffold(),
        '/privacy':(context) => PrivacyPolicy(title:'Privacy Policy',),
        '/terms':(context) => TermsOfServices(title: "Terms of Services",),
        '/about':(context) => Scaffold(),
      },
    );
  }
}
