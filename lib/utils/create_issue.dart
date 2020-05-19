// Include all the required files.
import 'dart:convert';
import 'package:ara_chatbot/secrets/env.dart';
import 'package:http/http.dart' as http;

// Create a new issue onto the github site
class CreateIssue {
  String data;

  // Fetch the data
  CreateIssue({this.data}) {
    // Remodify data into JSON format
    data = '{\"title\":\"$data\"}';
  }

  // Send the issue to github.
  void sendIssue() async {
    // Username and token for the private repository on github.
    // The github access token is not provided due to security concerns.
    String auth = 'Basic ' + base64Encode(utf8.encode('$username:$token'));

    // Post request to the github issue site.
    try {
      await http.post(url, headers: {'Authorization': auth}, body: data); 
    } catch (SocketException){
      print("Connect to the internet.\n");
    } 
  }
}

