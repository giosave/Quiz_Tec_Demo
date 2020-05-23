import 'package:flutter/material.dart';
import 'package:quiz_tec_demo/core/constants/app_constants.dart';
import 'package:quiz_tec_demo/ui/shared/widgets_utils.dart';
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
        actions: <Widget>[

        ],
      ),
      body: buildContainer(
        child: Column(
          children: <Widget>[
            label("sadsadf")
          ],
        )
      ),
    );
  }
}