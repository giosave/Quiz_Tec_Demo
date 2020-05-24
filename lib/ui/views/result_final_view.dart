import 'package:flutter/material.dart';
import 'package:quiz_tec_demo/core/constants/app_constants.dart';

import 'package:quiz_tec_demo/ui/shared/widgets_utils.dart';
import 'package:quiz_tec_demo/ui/views/questionnaire_questions_view.dart';

class ResultFinalView extends StatelessWidget{
  final int score;
  ResultFinalView({Key key, @required this.score}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    resultFinal() {
      if (score < 39) {
        return textStyleRed("Nivel de estrés bajo");
      } else if (score<=79){
        return textStyleRed("Nivel de estrés moderado");
      } else {
        return textStyleRed("Nivel de estrés alto");
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Resultado"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.home), 
            onPressed: (){
              questionNumber = 0;
              finalSummation = 0;
              Navigator.pushNamed(
                context, 
                'home'
              );
            }
          )
        ],
      ),
      body: buildContainer(
        child: Wrap(
          children: <Widget>[
            Text("Resultado final: $score",
              style: TextStyle(
                fontSize: 35.0
              ),
            ),
            resultFinal(),
            Padding(padding: EdgeInsets.all(30.0)),
          ],
        ),
      ),
    );
  }

  Widget textStyleRed(String textDescription) {
    return Text(textDescription,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
        fontSize: FONT_SIZE_BIG,
        color: Colors.red
      ),
    );
  }
}