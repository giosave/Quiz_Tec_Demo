import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_tec_demo/core/constants/app_route_constants.dart';
import 'package:quiz_tec_demo/ui/views/question_home.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutePaths.Home:
        return MaterialPageRoute(builder: (_) => QuestionHome());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('Ruta no definida ${settings.name}')
            ),
          )
        );
    }
  }
}