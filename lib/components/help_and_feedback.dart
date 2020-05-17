// Include all the required files
import 'package:flutter/material.dart';
import 'package:ara_chatbot/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';

// Help and Feedback Screen with some user interaction
class HelpAndFeedback extends StatelessWidget {
  // The title of the application
  final String title;
  final TextEditingController controller = TextEditingController();

  // Constructor
  HelpAndFeedback({Key key, this.title}) : super(key: key);  

  @override
  Widget build(BuildContext context) {   
    final Color backgroundColor = (MediaQuery.of(context).platformBrightness == Brightness.light) ? backgroundColorLight : backgroundColorDark;

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
              "Submit an issue",
              style: GoogleFonts.merriweather(
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: (MediaQuery.of(context).size.width)-90,
                  child: TextFormField(
                  autocorrect: true,
                  controller: controller,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    fillColor: accentColorDark,
                    filled: true, 
                  ), 
                ),
                ),
              IconButton(
              icon: Icon(Icons.send), 
              color: backgroundColorDark,
              onPressed: (){
                print(controller.value.text);
              },
            ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}