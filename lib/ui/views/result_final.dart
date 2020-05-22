import 'package:flutter/material.dart';

import 'package:quiz_tec_demo/ui/shared/widgets_utils.dart';
import 'package:quiz_tec_demo/ui/views/question_first.dart';

class ResultFinal extends StatelessWidget{
  final int score;
  ResultFinal({Key key, @required this.score}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    metodo() {
      if (score< 39){
        return label("Nivel de estrés bajo");
      } else if (score<=79){
        return label("Nivel de estrés moderado");
      } else {
        return label("Nivel de estrés alto");
      }
    }

    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          title: label("text"),
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              metodo(),
              Text("Resultado final: $score",
                style: TextStyle(
                    fontSize: 35.0
                ),),
              Padding(padding: EdgeInsets.all(30.0)),
              MaterialButton(
                color: Colors.red,
                onPressed: (){
                  questionNumber = 0;
                  finalSummation = 0;
                  Navigator.pop(context);
                },
                child: Text("Regresar Inicio",
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white
                  ),),)
            ],
          ),
        ),
      ),
    );
  }
}