import 'package:flutter/material.dart';
import 'package:quiz_tec_demo/core/constants/app_route_constants.dart';

import 'package:quiz_tec_demo/ui/views/splash_screen_view.dart';
import 'package:quiz_tec_demo/ui/widgets/router.dart';

void main() {
  runApp(
    MaterialApp(
      home: SplashScreenView(),
      //initialRoute: RoutePaths.Home,
      title: 'Flutter Demo',
      initialRoute: RoutePaths.Splash,
      onGenerateRoute: Router.generateRoute,
    )
  );
}
