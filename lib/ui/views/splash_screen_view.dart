import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quiz_tec_demo/ui/views/question_home.dart';

class SplashScreenView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SplashScreenViewState();
}

class _SplashScreenViewState extends State<SplashScreenView> {

  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 1),
      () => Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (BuildContext context) => QuestionHome()))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 22),
      child: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/itm.png')
          ),
          
        )
      ),
    );
  }
}