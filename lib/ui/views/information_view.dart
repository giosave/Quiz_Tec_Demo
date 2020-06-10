import 'package:flutter/material.dart';

import 'package:quiz_tec_demo/core/constants/app_route_constants.dart';
import 'package:quiz_tec_demo/ui/shared/widgets_utils.dart';
import 'package:quiz_tec_demo/ui/widgets/fake_data.dart';

class InformationView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return buildContainer(
      child: ListView.builder(
        itemCount: information.length,
        itemBuilder: (context, index) {
          return Card(
            child: Wrap(
              children: <Widget>[
                ListTile(
                  title: Center(
                    child: label(information[index]['titulo'], FSize.Big, FWeight.Bold)
                  ),
                  trailing: IconButton(
                    iconSize: 30,
                    focusColor: Colors.orange,
                    color: Colors.lightGreen,
                    icon: Icon(Icons.arrow_forward),
                    onPressed: () => Navigator.pushNamed(
                      context,
                      RoutePaths.WebView,
                      arguments: {
                        'tituloExterno': information[index]['titulo'],
                        'linkExterno': information[index]['link']
                      }
                    
                    ),
                  )
                ),
              ],
            ),
          );
        })
    );
  }
}