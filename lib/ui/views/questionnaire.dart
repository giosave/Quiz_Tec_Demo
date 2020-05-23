import 'package:flutter/material.dart';

import 'package:quiz_tec_demo/ui/shared/widgets_utils.dart';
import 'package:quiz_tec_demo/ui/views/question_first.dart';

class Questionnaire extends StatefulWidget {
  @override
  _QuestionnaireState createState() => _QuestionnaireState();
}

class _QuestionnaireState extends State<Questionnaire> {
  @override
  Widget build(BuildContext context) {
    return buildContainer(
      child: Column(  
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          MaterialButton(
            height: 50.0,
            color: Colors.green,
            onPressed: startQuiz,
            child: Text("Cuestionario 1",
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white
              ),
            )
          )
        ],
      ),
    );
  }

  void startQuiz() {
    setState(() {
    Navigator.push(context, new MaterialPageRoute(builder: (context)=> QuestionFirst()));
    });
  }
}