import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kasirin_pos/core/routes/constants.dart';
import 'package:kasirin_pos/core/routes/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kasirin - Point of Sales',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: Router.generateRoute,
    );
  }
}

class Root extends StatefulWidget {
  @override
  _RootState createState() => _RootState();
}

class _RootState extends State<Root> {
  @override
  void initState() {
    super.initState();
    _orientasiDevice();
    _toTransparantStatusBar();
    _init();
  }

  _init() {
    Future.delayed(Duration(milliseconds: 100), () {
      Navigator.pushNamedAndRemoveUntil(context, mainRoute, (route) => false);
    });
  }

  _toTransparantStatusBar() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
  }

  _orientasiDevice() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
