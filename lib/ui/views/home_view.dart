import 'dart:io';

import 'package:flutter/material.dart';
import 'package:quiz_tec_demo/core/constants/proband0222.dart';
import 'package:quiz_tec_demo/core/constants/probando.dart';
import 'package:quiz_tec_demo/ui/shared/ui_helpers.dart';
import 'package:quiz_tec_demo/ui/shared/widgets_utils.dart';
import 'package:quiz_tec_demo/ui/views/question_home.dart';
import 'package:quiz_tec_demo/ui/widgets/drawer_menu_item_widget.dart';
class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedIndex =0;

  onChangeMenu(int index)=> setState(()=>_selectedIndex=index);
  @override
  Widget build(BuildContext context) {
    switch(_selectedIndex) {
      case 0:
      return _buildContentScreen("heading", Probando());
      case 2:
      return _buildContentScreen("heading", Probando222());
    }
    return Container();
  }

  Widget _buildContentScreen(String heading, Widget content) {
    return Scaffold(
      drawer: _buildDrawerManager(),
      appBar: AppBar(
        actions: <Widget>[
          IconButton(icon: 
          Icon(Icons.archive), onPressed: (){})
        ],
      ),
      body: content,
    );
  }

  Widget _buildDrawerManager() {
    return Drawer(
      child: ListView(
        children: <Widget>[
          _user('gio','gio@gmail.com',AssetImage('src/images/profile.png'),AssetImage('src/images/solo.png')),
          Wrap(
            children: <Widget>[
              DrawerMenuItemWidget(
                title:"Inicio",
                icon: Icons.home,
                index: 1,
                selectedIndex:_selectedIndex,// _selectedIndex
                onChangeMenu: onChangeMenu//onChangeMenu
              ),
              DrawerMenuItemWidget(
                title:"Cuestionarios",
                icon: Icons.book,
                index: 2,
                selectedIndex:_selectedIndex,// _selectedIndex
                onChangeMenu: onChangeMenu//onChangeMenu
              ),
              DrawerMenuItemWidget(
                title:"Contactos",
                icon: Icons.contacts,
                index: 3,
                selectedIndex:_selectedIndex,// _selectedIndex
                onChangeMenu: onChangeMenu//onChangeMenu
              ),
              DrawerMenuItemWidget(
                title:"Información",
                icon: Icons.info,
                index: 4,
                selectedIndex:_selectedIndex,// _selectedIndex
                onChangeMenu: onChangeMenu//onChangeMenu
              ),
              ListTile(
                leading: Icon(Icons.exit_to_app, color: Colors.redAccent),
                title: label('Cerrar'),
                onTap: ()=> exit(0)
              )
            ],
          )
        ],
      )
    );
  }

  Widget _user(String email, String usuario,AssetImage perfilPrincipal,AssetImage usuarioFondo){
    String networkImage='https://cdn.pixabay.com/photo/2012/08/27/14/19/evening-55067_960_720.png';

    return UserAccountsDrawerHeader( 
      accountEmail: Text(email),
      accountName: Text(usuario),
      /*otherAccountsPictures: <Widget>[IMAGEN FONDO TRASERO
        GestureDetector(
          onTap: (){},
          child:  CircleAvatar( 
            backgroundImage: usuarioFondo,
          ),
        )
      ],*/
      /*currentAccountPicture: GestureDetector(//imagen principal circular
        onTap: (){},
        child: CircleAvatar(
          backgroundImage: perfilPrincipal,
        ),
      ),*/
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
            image: NetworkImage(networkImage),
        ),
      ),
    );
  }
}