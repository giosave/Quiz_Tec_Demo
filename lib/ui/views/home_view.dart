import 'dart:io';

import 'package:flutter/material.dart';
import 'package:quiz_tec_demo/core/constants/app_constants.dart';
import 'package:quiz_tec_demo/ui/shared/widgets_utils.dart';
import 'package:quiz_tec_demo/ui/views/home_screen_view.dart';
import 'package:quiz_tec_demo/ui/views/information_view.dart';
import 'package:quiz_tec_demo/ui/views/questionnaire_view.dart';
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
        return _buildContentScreen(PAGE_HOME, HomeScreenView());
      case 1:
        return _buildContentScreen(PAGE_QUESTIONNAIRE, QuestionnaireView());
      case 2:
        return _buildContentScreen(PAGE_CONTACT, InformationView());
    }
    return Container();
  }

  Widget _buildContentScreen(String heading, Widget content) {
    return Scaffold(
      drawer: _buildDrawerManager(),
      appBar: AppBar(
        title: Text(heading),
      ),
      body: content,
    );
  }

  Widget _buildDrawerManager() {
    return Drawer(
      child: ListView(
        children: <Widget>[
          _user('Tecnológico Nacional De México','ITMexicali'),
          Wrap(
            children: <Widget>[
              DrawerMenuItemWidget(
                title:"Contactos",
                icon: Icons.contacts,
                index: 0,
                selectedIndex:_selectedIndex,// _selectedIndex
                onChangeMenu: onChangeMenu//onChangeMenu
              ),
              DrawerMenuItemWidget(
                title:"Cuestionarios",
                icon: Icons.book,
                index: 1,
                selectedIndex:_selectedIndex,// _selectedIndex
                onChangeMenu: onChangeMenu//onChangeMenu
              ),
              DrawerMenuItemWidget(
                title:"Información",
                icon: Icons.info,
                index: 2,
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

  Widget _user(String email, String usuario){

    return UserAccountsDrawerHeader( 
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('assets/tec.png')
          ),
      ),
    );
  }
}