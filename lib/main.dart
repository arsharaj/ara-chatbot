// Include all the required files
// Built in Libraries
import 'package:flutter/material.dart';
// Utils
import './utils/light_theme.dart';
import './utils/dark_theme.dart';
// Custom components screens library
import './components/home_page.dart';

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
        '/':(context) => HomePage(title: 'Ara',),
        '/settings':(context) => Scaffold(),
        '/help':(context) => Scaffold(),
        '/privacy':(context) => Scaffold(),
        '/terms':(context) => Scaffold(),
        '/about':(context) => Scaffold(),
      },
    );
  }
}
