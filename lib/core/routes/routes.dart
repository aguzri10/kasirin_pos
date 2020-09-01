import 'package:flutter/material.dart';
import 'package:kasirin_pos/core/routes/arguments.dart';
import 'package:kasirin_pos/views/main_page.dart';
import 'package:kasirin_pos/views/tab-checkout/detail.dart';

import '../../main.dart';
import 'constants.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case route:
        return MaterialPageRoute(builder: (_) => Root());
      case mainRoute:
        return MaterialPageRoute(builder: (_) => MainPage());
      case detailRoute:
        final DetailArguments arguments = settings.arguments;
        return MaterialPageRoute(
          builder: (_) => Detail(
            arguments: arguments,
          ),
        );
      default:
        return null;
    }
  }
}
