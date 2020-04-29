import 'package:flutter/material.dart';

import 'package:quiz_tec_demo/ui/views/question_first.dart';

class ResultFinal extends StatelessWidget{
  final int score;
  ResultFinal({Key key, @required this.score}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
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