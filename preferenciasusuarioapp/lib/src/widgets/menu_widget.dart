import 'package:flutter/material.dart';
import 'package:preferenciasusuarioapp/src/pages/home_page.dart';
import 'package:preferenciasusuarioapp/src/pages/settings_page.dart';

class MenuWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Container(),
            decoration: BoxDecoration(
              image: DecorationImage(
                      image: AssetImage('assets/original.jpg'),
                      fit: BoxFit.cover
                    )
            ),
          ),
          ListTile(
            leading: Icon(Icons.pages, color: Colors.blue),
            title: Text('Home'),
            onTap: () => Navigator.pushReplacementNamed(context, HomePage.routeName),
          ),
           ListTile(
            leading: Icon(Icons.people, color: Colors.blue),
            title: Text('Party Mode'),
            onTap: (){},
          ),
            ListTile(
            leading: Icon(Icons.settings, color: Colors.blue),
            title: Text('Settings'),
            onTap: () => Navigator.pushReplacementNamed(context, SettingsPage.routeName),// navega a la pagina y te quita el boton de back button
              // Navigator.pop(context) // cierra el menu 
              //Navigator.pushNamed(context, SettingsPage.routeName);
              
            
          )
        ],
      ),
    );
  }
}