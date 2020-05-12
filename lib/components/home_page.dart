// Import all the required files
import 'package:flutter/material.dart';
import '../utils/colors.dart';

// Home Page - The main screen of the app where user interact most of the time.
class HomePage extends StatefulWidget {

  // The title of the application
  final String title;

  HomePage({Key key, this.title}) : super(key: key);  

  @override
  _HomePageState createState() => _HomePageState();
}

// Manage all the states of the applications seperately.
class _HomePageState extends State<HomePage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: (MediaQuery.of(context).platformBrightness == Brightness.light) ? backgroundColorLight : backgroundColorDark,  
      appBar: AppBar(
        title: Text(widget.title),
      ),
    );
  }
}
