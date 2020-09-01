import 'package:flutter/material.dart';
import 'package:kasirin_pos/core/routes/arguments.dart';
import 'package:kasirin_pos/views/home/detail.dart';
import 'package:kasirin_pos/views/home/index.dart';

import '../../main.dart';
import 'constants.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case route:
        return MaterialPageRoute(builder: (_) => Root());
      case homeRoute:
        return MaterialPageRoute(builder: (_) => HomePage());
      case detailRoute:
        final DetailArguments arguments = settings.arguments;
        return MaterialPageRoute(
            builder: (_) => Detail(
                  arguments: arguments,
                ));
      default:
        return null;
    }
  }
}
