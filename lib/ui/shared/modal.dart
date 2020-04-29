import 'package:flutter/material.dart';

import 'package:quiz_tec_demo/core/constants/app_constants.dart';
import 'package:quiz_tec_demo/ui/shared/widgets_utils.dart';


void modal(BuildContext context, String title, Widget content, [Color textColor, List<Widget> actions]) {
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (context) => AlertDialog(
      title: label(title, FSize.Normal, FWeight.Bold),
      content: content,
      actions: (actions != null && actions.length > 0)
      ? actions
      : [
        FlatButton(
          color: PRIMARY_COLOR,
          child: Text('Cerrar'),
          onPressed: () {
            Navigator.pop(context);
          }
        )
      ],
    )
  );
}