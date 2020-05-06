import 'package:flutter/material.dart';
import 'package:preferenciasusuarioapp/src/share_prefs/preferencias_usuario.dart';

import 'package:preferenciasusuarioapp/src/widgets/menu_widget.dart';

class HomePage extends StatelessWidget {
  static final String routeName = 'home';
  //instalar las preferencias  https://pub.dev/packages/shared_preferences#-installing-tab-
    final prefs = new PreferenciasUsuario();
  @override
  Widget build(BuildContext context)  {

    prefs.ultimaPagina = HomePage.routeName;
    
    
    return Scaffold(
      appBar: AppBar(
        title: Text('preferencias'),
        backgroundColor: (prefs.colorSecundario) ? Colors.teal : Colors.blue ,
      ),
      //drawer: _crearMenu(context), // menu lateral 
      drawer: MenuWidget(),
      body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                  Text('Color secundario: ${prefs.colorSecundario}'),
                  Divider(),
                  Text('Genero: ${prefs.genero}'),
                  Divider(),
                  Text('Nombre usuario: ${prefs.nombreUsuario}'),
                  Divider(),
                ]
            ),
    );
  }
  /*
  Drawer _crearMenu(BuildContext context) {

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
  */
}