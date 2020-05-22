import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:quiz_tec_demo/core/constants/app_constants.dart';
import 'package:quiz_tec_demo/core/constants/app_route_constants.dart';

final List<Map<String, dynamic>> groups = [
  {
    'items': [
      {
        'title': PAGE_HOME,
        'icon': FontAwesomeIcons.archive,
        'routeName': RoutePaths.Home,
        'role': [],
        'index': 0
      }
    ],
    'role': [
      PROFILE_ADMIN
    ]
  },
];