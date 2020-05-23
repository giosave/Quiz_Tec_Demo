import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_tec_demo/core/constants/app_route_constants.dart';
import 'package:quiz_tec_demo/ui/views/home_view.dart';
import 'package:quiz_tec_demo/ui/views/question_home.dart';
import 'package:quiz_tec_demo/ui/views/splash_screen_view.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutePaths.Home:
        return MaterialPageRoute(builder: (_) => HomeView());
      case RoutePaths.Splash:
        return MaterialPageRoute(builder: (_) => SplashScreenView());
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