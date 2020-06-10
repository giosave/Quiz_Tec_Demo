import 'package:flutter/material.dart';

import 'package:quiz_tec_demo/ui/shared/modal.dart';
import 'package:quiz_tec_demo/ui/shared/widgets_utils.dart';
import 'package:quiz_tec_demo/ui/widgets/fake_data.dart';

class HomeScreenView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return buildContainer(
      child: ListView.builder(
        itemCount: dataContact.length,
        itemBuilder: (context, index) {
          return Card(
            child: Wrap(
              children: <Widget>[
                ListTile(
                  title: Center(
                    child: label(dataContact[index]['nombre'], FSize.Big, FWeight.Bold)
                  ),
                  trailing: label(dataContact[index]['escuela'], FSize.ExtraSmall),
                  onTap: () => modal(
                    context, 
                    'Datos', 
                    Wrap(
                      children: <Widget>[
                        ListTile(
                          title: label("Direccion", FSize.Normal, FWeight.Bold),
                          subtitle: label(dataContact[index]['direccion']),
                        ),
                        ListTile(
                          title: label("Numero:", FSize.Normal, FWeight.Bold),
                          subtitle: label(dataContact[index]['numero'].toString()),
                        ),
                        (dataContact[index]['correo'] != null) ?
                        ListTile(
                          title: label("Correo:", FSize.Normal, FWeight.Bold),
                          subtitle: label(dataContact[index]['correo']),
                        ) : Container(),
                      ],
                    )
                  ),
                ),
              ],
            ),
          );  
        }
      ),
    );
  }
}