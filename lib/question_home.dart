import 'package:flutter/material.dart';

import 'package:quiz_tec_demo/question_first.dart';

class QuestionHome extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return QuestionHomeState();
  }
}

class QuestionHomeState extends State<QuestionHome>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("app_tec"),
        backgroundColor: Colors.blue,
    ),
    body: Container(
      margin: const EdgeInsets.all(15.0),
        child: Column(  
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          MaterialButton(
            height: 50.0,
            color: Colors.green,
            onPressed: startQuiz,
            child: Text("Cuestionario",
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white
              ),
            )
          )
        ],
      ),
    ),
  );
}

  void startQuiz() {
    setState(() {
    Navigator.push(context, new MaterialPageRoute(builder: (context)=> QuestionFirst()));
    });
  }
}

