import 'package:flutter/material.dart';

import 'package:quiz_tec_demo/ui/views/result_final.dart';
import 'package:quiz_tec_demo/ui/widgets/question_list.dart';

var finalScore = 0;
var questionNumber = 0;
var quiz = QuestionList();

class QuestionFirst extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return QuestionFirstState();
  }
}

class QuestionFirstState extends State<QuestionFirst> {
  @override
  Widget build(BuildContext context) {
    print(questionNumber);//inicia en 1
    print(quiz.cuestionario.length);
    //if(quiz.choices[questionNumber][0] == quiz.correctAnswers[questionNumber])
    print("choices questions ${quiz.choices[questionNumber][0]}");
    print("quiz correct answers ${quiz.correctAnswers[questionNumber]}");
    return WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          body: Container(
            margin: const EdgeInsets.all(10.0),
            alignment: Alignment.topCenter,
            child: Column(
              children: <Widget>[
                Padding(padding: EdgeInsets.all(20.0)),
                Container(
                  alignment: Alignment.centerRight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Prregunta ${questionNumber + 1} of ${quiz.cuestionario.length}",
                        style: TextStyle(
                            fontSize: 22.0
                        ),),
                      Text("Score: $finalScore",
                        style: TextStyle(
                            fontSize: 22.0
                        ),)
                    ],
                  ),
                ),
                //image
                Padding(padding: EdgeInsets.all(10.0)),
                Image.asset(
                  "images/${quiz.images[questionNumber]}.jpg",
                ),
                Padding(padding: EdgeInsets.all(10.0)),
                Text(quiz.cuestionario[questionNumber],
                  style: TextStyle(
                    fontSize: 20.0,
                  ),),
                Padding(padding: EdgeInsets.all(10.0)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    //button 1
                    MaterialButton(
                      minWidth: 120.0,
                      color: Colors.blueGrey,
                      onPressed: (){
                        finalScore+=5;
                        //print(quiz.choices[questionNumber][0]);
                        //if(quiz.choices[questionNumber][0] == quiz.correctAnswers[questionNumber]){
                        //  debugPrint("Correct");
                        //  finalScore++;
                        //}else{
                        //  debugPrint("Wrong");
                        //}
                        updateQuestion();
                      },
                      child: Text("1",
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white
                        ),),
                    ),
                    //button 2
                    MaterialButton(
                      minWidth: 120.0,
                      color: Colors.blueGrey,
                      onPressed: (){
                        if(quiz.choices[questionNumber][1] == quiz.correctAnswers[questionNumber]){
                          debugPrint("Correct");
                          finalScore++;
                        }else{
                          debugPrint("Wrong");
                        }
                        updateQuestion();
                      },
                      child: Text(quiz.choices[questionNumber][1],
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white
                        ),),
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.all(10.0)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    //button 3
                    MaterialButton(
                      minWidth: 120.0,
                      color: Colors.blueGrey,
                      onPressed: (){
                        if(quiz.choices[questionNumber][2] == quiz.correctAnswers[questionNumber]){
                          debugPrint("Correct");
                          finalScore++;
                        }else{
                          debugPrint("Wrong");
                        }
                        updateQuestion();
                      },
                      child: Text(quiz.choices[questionNumber][2],
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white
                        ),),
                    ),
                    //button 4
                    MaterialButton(
                      minWidth: 120.0,
                      color: Colors.blueGrey,
                      onPressed: (){
                        if(quiz.choices[questionNumber][3] == quiz.correctAnswers[questionNumber]){
                          debugPrint("Correct");
                          finalScore++;
                        }else{
                          debugPrint("Wrong");
                        }
                        updateQuestion();
                      },
                      child: Text(quiz.choices[questionNumber][3],
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white
                        ),),
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.all(15.0)),
                Container(
                  alignment: Alignment.bottomCenter,
                  child: MaterialButton(
                      minWidth: 240.0,
                      height: 30.0,
                      color: Colors.red,
                      onPressed: resetQuiz,
                      child: Text("Inicio",
                        style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.white
                        ),)
                  )
                ),
              ],
            ),
          ),
      )
    );
  }

  void resetQuiz(){
    setState(() {
      Navigator.pop(context);
      finalScore = 0;
      questionNumber = 0;
    });
  }

  void updateQuestion(){
    setState(() {
      if(questionNumber == quiz.cuestionario.length - 1){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> ResultFinal(score: finalScore,)));

      }else{
        questionNumber++;
      }
    });
  }
}
