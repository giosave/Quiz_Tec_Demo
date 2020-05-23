import 'package:flutter/material.dart';
import 'package:quiz_tec_demo/core/constants/app_constants.dart';
import 'package:quiz_tec_demo/ui/shared/widgets_utils.dart';
import 'package:quiz_tec_demo/ui/views/result_final_view.dart';
import 'package:quiz_tec_demo/ui/widgets/question_list.dart';

  var finalSummation = 0;
  var questionNumber = 0;
  var quiz = QuestionList();

class QuestionnaireQuestionsView extends StatefulWidget {
  @override
  _QuestionnaireQuestionsViewState createState() => _QuestionnaireQuestionsViewState();
}

class _QuestionnaireQuestionsViewState extends State<QuestionnaireQuestionsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(PAGE_QUESTIONNAIREQUESTION),
      ),
      body: Container(
        margin: const EdgeInsets.all(10.0),
        alignment: Alignment.topCenter,
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.all(10.0)),
            Text(quiz.cuestionario[questionNumber],
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            Padding(padding: EdgeInsets.all(20.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                button("1", () {//button 1 en widget
                  finalSummation+=1;
                  updateSummation();
                }),
                button("2", (){
                  finalSummation+=2;
                  updateSummation();
                }),
                button("3", (){
                  finalSummation+=3;
                  updateSummation();
                }),
                //button 2
                //button 5
              ],
            ),
            Padding(
              padding: EdgeInsets.all(10.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                //button 3
                button("4", () {
                  finalSummation+=4;
                  updateSummation();
                }),
                button("5", (){
                  finalSummation+=5;
                  updateSummation();
                })
                //button 4
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget button(String text, GestureTapCallback onTap) {
    return MaterialButton(
      minWidth: 120.0,
      color: Colors.blueGrey,
      onPressed: onTap,
      child: Text(text,
        style: TextStyle(
          fontSize: 20.0,
          color: Colors.white
        ),
      ),
    );
  }

  void resetQuiz(){
    setState(() {
      Navigator.pop(context);
      finalSummation = 0;
      questionNumber = 0;
    });
  }

  void updateSummation(){
    setState(() {
      if(questionNumber == quiz.cuestionario.length - 1){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> ResultFinalView(score: finalSummation,)));
      }else{
        questionNumber++;
      }
    });
  }
}