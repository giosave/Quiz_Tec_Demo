import 'package:flutter/material.dart';
import 'package:quiz_tec_demo/core/constants/app_constants.dart';
import 'package:quiz_tec_demo/ui/shared/widgets_utils.dart';
class QuestionnaireQuestionsView extends StatefulWidget {
  @override
  _QuestionnaireQuestionsViewState createState() => _QuestionnaireQuestionsViewState();
}
//YA NO SE USA
class _QuestionnaireQuestionsViewState extends State<QuestionnaireQuestionsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(PAGE_QUESTIONNAIREQUESTION),
        actions: <Widget>[

        ],
      ),
      body: Container(
            margin: const EdgeInsets.all(10.0),
            alignment: Alignment.topCenter,
            child: Column(
              children: <Widget>[
                Padding(padding: EdgeInsets.all(10.0)),
                Text("quiz.cuestionario[questionNumber]",
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
                Padding(padding: EdgeInsets.all(20.0)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    //button 1
                    MaterialButton(
                      minWidth: 120.0,
                      color: Colors.blueGrey,
                      onPressed: (){
                        //finalSummation+=1;
                        //updateSummation();
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
                        //finalSummation+=2;
                        //updateSummation();
                      },
                      child: Text("2",
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white
                        ),),
                    ),
                    //button 5
                    MaterialButton(
                      minWidth: 120.0,
                      color: Colors.blueGrey,
                      onPressed: (){
                        ///finalSummation+=3;
                        //u//pdateSummation();
                      },
                      child: Text("3",
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
                        //finalSummation+=4;
                        //updateSummation();
                      },
                      child: Text("4",
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
                        //finalSummation+=5;
                        //updateSummation();
                      },
                      child: Text("5",
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
                      //onPressed: resetQuiz,
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
    );
  }
}