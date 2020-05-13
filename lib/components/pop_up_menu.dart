// Include all the required files
import 'package:flutter/material.dart';

// All the menu buttons
enum menuItems {settings,privacy,terms,help,about}

// Create the popup menu by using appropriate theme.
class PopUpMenu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      tooltip: "Menu",
      onSelected: (result){
        // Navigate to the right screen.
        if(result==menuItems.settings){
          Navigator.pushNamed(context, '/settings');  // Settings Screen
        }else if(result==menuItems.privacy){
          Navigator.pushNamed(context, '/privacy'); // Privacy Screen
        }else if(result==menuItems.terms){
          Navigator.pushNamed(context, '/terms'); // Terms Screen
        }else if(result==menuItems.help){
          Navigator.pushNamed(context, '/help');  // Help Screen
        }else if(result==menuItems.about){
          Navigator.pushNamed(context, '/about'); // About Screen
        }else{
          Navigator.pushReplacementNamed(context, '/'); // Main Screen
        }
      },
      itemBuilder:(BuildContext context)=>[
        const PopupMenuItem(
          value: menuItems.settings,
          child: Text('Settings'),
        ),
        const PopupMenuItem(
          value: menuItems.privacy,
          child: Text('Privacy Policy'),
        ),
        const PopupMenuItem(
          value: menuItems.terms,
          child: Text('Terms of Services'),
        ),
        const PopupMenuItem(
          value: menuItems.help,
          child: Text('Help & Feedback'),
        ),
        const PopupMenuItem(
          value: menuItems.about,
          child: Text('About'),
        ),
      ]
    );
  }
}