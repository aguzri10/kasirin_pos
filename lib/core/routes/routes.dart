import 'package:flutter/material.dart';
import 'package:kasirin_pos/core/routes/arguments.dart';
import 'package:kasirin_pos/views/pages/main_page.dart';
import 'package:kasirin_pos/views/pages/tab-checkout/detail.dart';
import 'package:kasirin_pos/views/pages/tab-checkout/index.dart';
import 'package:kasirin_pos/views/pages/tab-checkout/pay.dart';
import 'package:kasirin_pos/views/pages/tab-store/index.dart';
import 'package:kasirin_pos/views/pages/tab-tables/index.dart';
import 'package:kasirin_pos/views/pages/tab-transaction/index.dart';

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
      case checkoutRoute:
        return MaterialPageRoute(builder: (_) => CheckoutPage());

      case tablesRoute:
        return MaterialPageRoute(builder: (_) => TablesPage());

      case transactionRoute:
        return MaterialPageRoute(builder: (_) => TransactionPage());

      case storeRoute:
        return MaterialPageRoute(builder: (_) => StorePage());

      case payRoute:
        return MaterialPageRoute(builder: (_) => PayPage());
      default:
        return null;
    }
  }
}
